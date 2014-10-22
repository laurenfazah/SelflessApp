# @client = TwilioClient.new
# @client.notify

class TwilioClient
	require 'twilio-ruby'

	def initialize
		@client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]
	end

	def notify
		all_phone_numbers.each_with_index do |number|
			@client.account.messages.create(
				from: '+14012294812',
				to: number,
				body: daily_text
			)
		end
	end

	private

	def daily_text
		["Help someone with a task they're struggling with.",
	"Let someone know you appreciate them.",
	"Share a smile - they're contagious.",
	"Bring in a treat for a classmate or coworker just because.",
	"Pay for the coffee of the customer behind you in line.",
	"Ask someone out for lunch you know but haven't gotten to know yet."].sample
	end

	def all_phone_numbers
		User.pluck(:phone_number)
	end

end
