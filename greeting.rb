# frozen_string_literal: true

require 'json'

# A Greeting is a nice thought to send to someone.
#
class Greeting
  attr_reader(:message)

  # (String) -> Greeting
  def initialize(message)
    @message = message
  end

  # () -> String
  def to_json
    JSON.generate(
      greeting: {
        message: message
      }
    )
  end
end
