# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'
require 'dry/monads/result'
require 'dry/monads/try'
require_relative 'greeting'
require_relative 'error'

# GreetingService creates new Greetings, but it doesn't work sometimes.
#
class GreetingService
  extend T::Sig
  include Dry::Monads::Result::Mixin
  include Dry::Monads::Try::Mixin

  class Unavailable < Error; end
  class CosmicRaysError < Error; end

  sig { params(name: String).returns(Dry::Monads::Result) }
  def self.call(name)
    new(name).call
  end

  sig { params(name: String).void }
  def initialize(name)
    @name = T.let(name, String)
  end

  sig { returns(Dry::Monads::Result) }
  def call
    message(@name).fmap2 do |message|
      Greeting.new(message)
    end
  end

  private

  sig { params(name: String).returns(Dry::Monads::Result) }
  def message(name)
    Try(Unavailable) do
      raise Unavailable if rand < 0.5
      raise CosmicRaysError if rand < 0.1

      "#{name}, have a nice day!"
    end.to_result
  end
end
