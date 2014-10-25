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
			"Bring in a treat for a classmate or coworker just because. -Selfless",
			"Pay for the coffee of the customer behind you in line. -Selfless",
			"Ask someone out for lunch you know but haven't gotten to know yet. -Selfless",
			"Ask to hear more from someone about something you know they're passionate about. -Selfless",
			"Give a stranger a friendly compliment. -Selfless",
			"Write a personal note to your waiter or waitress thanking them for their service. -Selfless",
			"This one is easy - be friendly! -Selfless",
			"If you can say yes, say yes. -Selfless",
			"Volunteer for a community service event. -Selfless",
			"If you don't have a pet allergy, go to your local pet shelter and give those cats and dogs (and others) some attention. -Selfless"
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

