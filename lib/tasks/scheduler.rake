desc "This task is called by the Heroku scheduler add-on"
task notify: :environment do
  client = TwilioClient.new
  client.notify
end

task count: :environment do |variable|
	count(@index)
end