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
			"Leave a free drink behind you in the vending machine. -Selfless",
			"Send a thank you to someone who has made a difference in your life -Selfless",
			"Leave quarters behind at the laundromat or on the washing machine for the next person to come. -Selfless",
			"Buy an extra bag of groceries on your next shopping trip to donate to a food shelter. -Selfless",


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

