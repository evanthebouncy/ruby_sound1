require 'spec_helper'

describe MessageController do

  describe "GET 'message_send'" do
    it "returns http success" do
      get 'message_send'
      response.should be_success
    end
  end

end
