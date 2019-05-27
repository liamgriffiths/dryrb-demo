# frozen_string_literal: true

require 'dry/monads/result'
require 'dry/monads/try'
require_relative 'greeting'
require_relative 'error'
require_relative 'callable'

# GreetingService creates new Greetings, but it doesn't work sometimes.
#
class GreetingService
  include Callable
  include Dry::Monads::Result::Mixin
  include Dry::Monads::Try::Mixin

  class Unavailable < Error; end
  class CosmicRaysError < Error; end

  attr_reader(:name)

  # (name: String) -> GreetingService
  def initialize(name: 'Human')
    @name = name
  end

  # () -> Result<Greeting> | Result<Unavailable>
  def call
    create_message.fmap do |message|
      Greeting.new(message)
    end
  end

  private

  # () -> Result<String> | Result<Unavailable>
  def create_message
    Try(Unavailable) do
      raise Unavailable if rand < 0.5
      raise CosmicRaysError if rand < 0.1

      "#{name}, have a nice day!"
    end.to_result
  end
end
