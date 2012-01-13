require 'rubygems'
require 'bundler'
Bundler.setup
require 'fakefs/spec_helpers'
require "moqueue"
require 'webmock/rspec'
require "baton/logging"

WebMock.disable_net_connect!

FileUtils.mkdir_p 'log' unless File.exists?('log')
Baton::Logging.logger = "log/test.log"
