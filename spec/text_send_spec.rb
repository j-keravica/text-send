require "spec_helper"
require "./text_send"


RSpec.describe TextSend do

  def app
    TextSend
  end

  describe "POST /send" do
    it "forwards the parameters to pusher"
  end

end
