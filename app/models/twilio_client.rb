# @client = TwilioClient.new
# @client.notify

class TwilioClient
	require 'twilio-ruby'

	def initialize
		@client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]
	end

	def notify
		all_phone_numbers.each do |number|
			@client.account.messages.create(
				from: '+14012294812',
				to: number,
				body: daily_text
			)
		end
	end

	private

	def daily_text
		@message = [ 
			"Hi there! Thanks so much for subscribing to Selfless. Things have gotten a bit busy, so unfortunately for now, I'll need to pause the daily messages. In the meantime, feel free to visit the forum or edit your account. Again, thanks for working to make the world a more selfless place!"
		].first

		# @message[@index]
	end

	def all_phone_numbers
		User.pluck(:phone_number)
	end

	# def count(index)
	# 	index += 1
	# 	if index >= @message.length
	# 		index = 0
	# 	end
	# end
end

