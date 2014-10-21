# @client = TwilioClient.new
# @client.notify

class TwilioClient
	require 'twilio-ruby'

	def initialize
		@client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]
	end

	def notify
		@client.messages.create(
			from: '+14012294812',
			to: all_phone_numbers,
			body: daily_text
		)
	end

	private

	def daily_text
		["Test 1", "Test 2", "Test 3"].sample
	end

	def all_phone_numbers
		User.pluck(:phone_number)
	end

end
