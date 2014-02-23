class SoundController < ApplicationController
  def playsound
    @resource_id = params[:resource_id]
    @sender_name = params[:sender_name]
    @base_resource_path = 'https://s3-us-west-2.amazonaws.com/digit4me.drinkchat.test1-voice/'
    @sound_format = '.mp3'

    @resource_location = "#{@base_resource_path}#{@resource_id}#{@sound_format}"
  #params[:sender_name]
  end
end
