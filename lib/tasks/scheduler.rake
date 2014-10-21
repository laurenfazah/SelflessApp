desc "This task is called by the Heroku scheduler add-on"
task notify: :environment do
  Notifications.notify
end
