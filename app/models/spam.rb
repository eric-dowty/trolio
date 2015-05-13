require 'rubygems'
require 'twilio-ruby'

class Spam

  def generate(number = 15702944707, pic, message, url) 
    if pic == ""
      pic = url
    end

    account_sid = ENV["twilio_sid"]
    auth_token = ENV["twilio_auth_token"]
    client = Twilio::REST::Client.new account_sid, auth_token
 
    from = "+13036225805" # Your Twilio number
 
    friends = {
                "+#{number}" => "buddy",
              }

    friends.each do |key, value|
      client.account.messages.create(
                :from => from,
                :to => key,
                :media_url => pic,
                :body => message
              )
    end
    puts "Sent message"
  end

end