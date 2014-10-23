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
	"Ask someone out for lunch you know but haven't gotten to know yet.",
	"Ask to hear more from someone about something you know they're passionate about.",
	"Give a stranger a friendly compliment.",
	"Write a personal note to your waiter or waitress thanking them for their service.",
	"This one is easy - be friendly!",
	"If you can say yes, say yes.",
	"Volunteer for a community service event.",
	"If you don't have a pet allergy, go to your local pet shelter and give those cats and dogs (and others) some attention.",].sample
	end

	def all_phone_numbers
		User.pluck(:phone_number)
	end

end
