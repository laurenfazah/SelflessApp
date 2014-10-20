class NotificationsController < ApplicationController
	require 'twilio-ruby'

	skip_before_action :verify_authenticity_token
	before_action :set_twilio_client

	$numbers = []
	User.all.select {|user| $numbers << user.phone_number}


	def notify
		message = @client.messages.create(
			from: '+14012294812',
			to: $numbers,
			body: 'Test!'
			)

		render plain: message.status
# binding.pry
	end

	private

	def set_twilio_client
		twilio_account_sid = ENV["TWILIO_ACCOUNT_SID"]
		twilio_auth_token = ENV["TWILIO_AUTH_TOKEN"]
		@client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token
	end

end
