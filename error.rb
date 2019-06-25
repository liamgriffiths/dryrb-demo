# typed: strict
# frozen_string_literal: true

require 'json'

# An Error that can happen in our app.
#
class Error < StandardError
  sig { returns(String) }
  def to_json
    JSON.generate(
      error: {
        reason: self.class.name
      }
    )
  end
end
