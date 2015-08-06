require "./environment.rb"

run Rack::URLMap.new("/" => TextSend)