require 'dotenv'# Appelle la gem Dotenv
require 'twitter'
require 'pry'
require 'rubocop'
require 'rspec'

Dotenv.load('.env')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte
# client.update('Mon premier tweet en Ruby !!!!')

def login_twitter(client)
	# ce qui rentre ce sont les identifiants du client
	# vérifie que le client est bien connecté
	# sort soit client == 0 ou client existe
end


