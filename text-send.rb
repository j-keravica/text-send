class TextSend < Sinatra::Base

	configure do
		set :port, 5678
	end

	helpers do
	  def push(word, color)
	  	#doesn't really seem right
	    Pusher.app_id = '130809'
		Pusher.key = '99b6cb58a1159ad76403'
		Pusher.secret = 'eeac69ef3cace05fdeb6'

		Pusher.trigger('test_channel', 'my_event', {:word => word, :color => color})
	  end
	end

	post '/send' do
	  puts params[:word] + " " + params[:color]
	  push(params[:word], params[:color])
	end

	run! if app_file == $0

end