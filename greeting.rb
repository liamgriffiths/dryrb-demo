# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'
require 'json'

# A Greeting is a nice thought to send to someone.
#
class Greeting
  extend T::Sig

  sig { params(message: String).void }
  def initialize(message)
    @message = T.let(message, String)
  end

  sig { returns(String) }
  def to_json
    JSON.generate(
      greeting: {
        message: @message
      }
    )
  end
end
