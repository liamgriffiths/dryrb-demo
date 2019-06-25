# typed: true
# frozen_string_literal: true

require 'dry/monads/result'
require 'dry/monads/try'
require_relative 'greeting'
require_relative 'error'

# GreetingService creates new Greetings, but it doesn't work sometimes.
#
class GreetingService
  include Callable::Mixin
  include Dry::Monads::Result::Mixin
  include Dry::Monads::Try::Mixin

  class Unavailable < Error; end
  class CosmicRaysError < Error; end

  attr_reader(:name)

  def self.call(name)
    new(name).call
  end

  def initialize(name)
    @name = name
  end

  # (String) -> Result<Greeting> | Result<Unavailable>
  def call
    message(name).fmap do |message|
      Greeting.new(message)
    end
  end

  private

  # (String) -> Result<String> | Result<Unavailable>
  def message(name)
    Try(Unavailable) do
      raise Unavailable if rand < 0.5
      raise CosmicRaysError if rand < 0.1

      "#{name}, have a nice day!"
    end.to_result
  end
end
