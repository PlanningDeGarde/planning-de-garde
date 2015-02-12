require 'bundler/setup'
require 'webmock/rspec'
require 'vcr'
#require 'coveralls'

require_relative '../lib/planning-de-garde.rb'

#Coveralls.wear!

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = false
  c.before_record do |i|
    i.response.body.force_encoding('UTF-8')
  end
end

RSpec.configure do |c|
	c.before(:suite) do
    PlanningDeGarde.configure do |config|
      config.app_id     = "6914c933f1b8aa60ea8ced7f62d2c721e6828b510015832cf2665a00ed2a6a86"
      config.app_secret = "ed69bc52e835fe9165dcb4c6b493590b3792e7b719300492846adbe14e4cd431"
    end
  end

  c.before(:each) do
    token = "433915e7703a658ce295390becb622070ea8e2f16bffd4d11c56a661723e403d"
    @api = PlanningDeGarde::API.new(token)
  end
end