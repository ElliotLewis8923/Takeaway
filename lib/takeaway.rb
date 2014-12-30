require 'twilio-ruby'

class Takeaway

	attr_accessor :menu

	def initialize(menu)
		@menu = menu
	end

	def place_order(order)
		if order.correct?
			send_sms
			return 'You have successfully placed an order.'
		else 
			raise 'Sorry, the total did not match.'
		end
	end

	private
	
		def send_sms
			account_sid = ENV['TWILIO_ACCOUNT_SID']
			auth_token = ENV['TWILIO_AUTH_TOKEN']
			@client = Twilio::REST::Client.new account_sid, auth_token
			@client.messages.create(
	  		from: "+441304410197",
	  		to: "#{order.person.number}",
	  		body: "Thank you, #{order.person.name}, your order was placed and will be delivered before #{Time.now+3600}.")
			return 'Message sent.'
		end

end