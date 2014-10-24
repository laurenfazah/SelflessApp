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
		["Let someone know you appreciate them. -Selfless"].sample
	end

	def all_phone_numbers
		User.pluck(:phone_number)
	end

end

# changing method:
# try running in a ruby file and puts the return
# def daily_text
# 	["array 1", "array 2"].shift
# end