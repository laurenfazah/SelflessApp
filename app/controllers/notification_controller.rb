class NotificationController < ApplicationController
	require 'twilio-ruby'

	skip_before_action :verify_authenticity_token
	before_action :set_twilio_client

	def notify
		@client.messages.create(
			from: '+14012294812',
			to: '+14016515884',
			body: 'Hey there!'
			)
	end

	private

	def set_twilio_client
		twilio_account_sid = ENV["TWILIO_ACCOUNT_SID"]
		twilio_auth_token = ENV["TWILIO_AUTH_TOKEN"]
		@client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token
	end

end
