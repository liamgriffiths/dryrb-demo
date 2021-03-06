# typed: false
# frozen_string_literal: true

require 'roda'
require 'dry-matcher'
require 'dry/matcher/result_matcher'
require_relative 'greeting_service'

# Our nice app.
#
class App < Roda
  ResultMatcher = Dry::Matcher::ResultMatcher

  route do |r|
    # A route for greetings
    #
    # Example:
    #   /hi/liam
    #
    r.get('hi', String) do |name|
      ResultMatcher.call(GreetingService.call(name)) do |m|
        m.success { |val| render_json(status: 200, body: val.to_json) }
        m.failure { |err| render_json(status: 500, body: err.to_json) }
      end
    end
  end

  private

  def render_json(status: 200, body:)
    response.status = status
    response['Content-Type'] = 'application/json'
    response.write(body)
  end
end
