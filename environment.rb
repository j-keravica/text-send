require 'rubygems'
require 'bundler'


Bundler.require(:default)                   # load all the default gems
Bundler.require(Sinatra::Base.environment)  # load all the environment specific gems

ENV["RACK_ENV"] = "test"

require './text_send.rb'
