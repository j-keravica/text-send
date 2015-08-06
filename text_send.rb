require "./lib/sendhelpers"

class TextSend < Sinatra::Base
  
  include SendHelpers

  post '/send' do
    puts params[:word] + " " + params[:color]
    push(params[:word], params[:color])
  end

end