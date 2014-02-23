class SoundController < ApplicationController
  def playsound
    @resource_id = params[:resource_id]
    @sender_name = params[:sender_name]
  #params[:sender_name]
  end
end
