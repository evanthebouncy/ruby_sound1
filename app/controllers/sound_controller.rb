class SoundController < ApplicationController
  def playsound
    @resource_id = params[:rid]
    @sender_name = params[:s]
  #params[:sender_name]
  end
end
