module SendHelpers
  def push(word, channel)
    Pusher.app_id = ENV["PUSHER_APP_ID"]
    Pusher.key = ENV["PUSHER_KEY"]
    Pusher.secret = ENV["PUSHER_SECRET"]
    Pusher.trigger(channel, 'my_event', { :word => word })
  end
end
