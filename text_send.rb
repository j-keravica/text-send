require "./lib/send_helpers"

class TextSend < Sinatra::Base

  include SendHelpers

  post '/send' do
    push(params[:word], params[:channel])
  end

end
