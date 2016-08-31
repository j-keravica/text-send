require "spec_helper"
require "./text_send"

RSpec.describe TextSend do

  def app
    TextSend
  end

  describe "POST /send" do
    it "forwards the parameters to pusher" do
      post "/send", { :word => "word", :channel => "123abc" }
      expect(last_response.status).to eq 200
    end
  end

end
