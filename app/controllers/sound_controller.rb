class SoundController < ApplicationController
  def playsound
    @resource_id = params[:resource_id]
    @sender_name = params[:sender_name]
    @base_resource_path = 'https://digit4me.drinkchat.test1-voice.s3.amazonaws.com/'
  #params[:sender_name]
  end
end
