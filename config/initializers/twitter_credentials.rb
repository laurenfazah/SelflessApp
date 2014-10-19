require 'twitter'

Twitter.configure do |config|
  config.consumer_key = ENV['TWITTER_APP_KEY']
  config.consumer_secret = ENV['TWITTER_APP_SECRET']
  config.oauth_token = ENV['OAUTH_TOKEN']
  config.oauth_token_secret = ENV['OAUTH_TOKEN_SECRET']
end