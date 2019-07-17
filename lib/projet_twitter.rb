require 'dotenv'# Appelle la gem Dotenv
require 'twitter'
require 'pry'
require 'rubocop'
require 'rspec'

Dotenv.load('.env')

def login_twitter
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  	end
  	return client
end

# ligne qui permet de tweeter sur ton compte
def first_tweet(client)
	client.update('Mon premier tweet en Ruby !!!! Jean ;) #bonjour_monde')
end

# first_tweet(login_twitter)



	# ce qui rentre ce sont les identifiants du client
	# vérifie que le client est bien connecté
	# sort soit client == 0 ou client existe



