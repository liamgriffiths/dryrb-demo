# frozen_string_literal: true

require 'sinatra'
require_relative 'greeting_service'
require_relative 'response'

get '/:name' do
  greeting_result = GreetingService.call(name: params['name'])
  res = Response.from_result(greeting_result)

  content_type(res.content_type)
  status(res.status)
  body(res.body)
end

error do
  'Something broke!'
end
