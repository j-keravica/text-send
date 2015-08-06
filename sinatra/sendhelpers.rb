require "sinatra/base"

module Sinatra
  module SendHelpers
    def push(word, color)
      Pusher.app_id = '130809'
      Pusher.key = '99b6cb58a1159ad76403'
      Pusher.secret = 'eeac69ef3cace05fdeb6'

      Pusher.trigger('test_channel', 'my_event', {:word => word, :color => color})
    end
  end
  helpers SendHelpers
end