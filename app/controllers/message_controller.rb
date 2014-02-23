require 'pp'

class MessageController < ApplicationController
  def message_send
    puts send_text_message
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]
    resource_id = params[:resource_id]
    sender_name = params[:sender_name]
 
    name_resource_id = "rid"
    name_sender_name = "s"

    message_to_send = "http://digit4me.herokuapp.com/sound/playsound\
                       ?#{name_resource_id}=#{resource_id}\
                       &#{name_sender_name}=#{sender_name}"

    # maybe okay to put it here, it is only usable locally anyways
    twilio_sid = "AC38bc1f90780d6fdb4e8bbeda30fe94b9"
    twilio_token = "4c3954e85c933cb66b86ae4ea991ed14"
    twilio_phone_number = "5103797685"

 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => message_to_send
    )

    puts "HOLY SHit MESSSSAAAGGGEEEE"
    puts message_to_send
    
  end


end
