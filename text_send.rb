require "./lib/send_helpers"

class TextSend < Sinatra::Base
  
  include SendHelpers

  post '/send' do
    puts params[:word] + " " + params[:color] + " " + params[:channel]
    push(params[:word], params[:color], params[:channel])
  end

end