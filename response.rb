require 'sinatra'
require 'dry-matcher'
require 'dry/matcher/result_matcher'

# Sets up a matcher for how to respond for different results
#
class Response
  attr_reader(
    :content_type,
    :status,
    :body
  )

  # (content_type: Symbol, status: Integer, body: String) -> Response
  def initialize(content_type: :json, status: 200, body:)
    @content_type = content_type
    @status = status
    @body = body
  end

  # (Result) -> Response
  def self.from_result(result)
    Dry::Matcher::ResultMatcher.call(result) do |m|
      m.success do |val|
        Response.new(body: val.to_json)
      end

      m.failure do |err|
        Response.new(status: 500, body: err.to_json)
      end
    end
  end
end
