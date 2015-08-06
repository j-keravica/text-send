require "./sinatra/sendhelpers"

class TextSend < Sinatra::Base
  
  helpers Sinatra::SendHelpers

  post '/send' do
    puts params[:word] + " " + params[:color]
    push(params[:word], params[:color])
  end

end