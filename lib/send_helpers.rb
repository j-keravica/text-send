module SendHelpers
  def push(word, color)
    Pusher.app_id = ENV["PUSHER_APP_ID"]
    Pusher.key = ENV["PUSHER_KEY"]
    Pusher.secret = ENV["PUSHER_SECRET"]

    Pusher.trigger('test_channel', 'my_event', {:word => word, :color => color})
  end
end
