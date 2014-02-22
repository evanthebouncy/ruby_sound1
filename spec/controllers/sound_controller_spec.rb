require 'spec_helper'

describe SoundController do

  describe "GET 'playsound'" do
    it "returns http success" do
      get 'playsound'
      response.should be_success
    end
  end

end
