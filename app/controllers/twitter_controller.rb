class TwitterController < ApplicationController


	 def tweets
        twitterCountryCode =  params[:twitterCountryCode]

        client = Twitter::REST::Client.new do |config|
          config.consumer_key = Figaro.env.twitter_key
          config.consumer_secret = Figaro.env.twitter_secret
        end
        url = "https://api.twitter.com/1.1/trends/place.json?id=" + twitterCountryCode 

        tweets = client.get(url)


	 end

end