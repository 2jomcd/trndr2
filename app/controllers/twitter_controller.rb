class TwitterController < ApplicationController


	 def tweets
        twitter_country_code = params[:twitter_country_code]

        client = Twitter::REST::Client.new do |config|
          config.consumer_key = Figaro.env.twitter_key
          config.consumer_secret = Figaro.env.twitter_secret
        end

        url = "https://api.twitter.com/1.1/trends/place.json?id=" + twitter_country_code 

        tweets = client.get(url)

        render json: tweets

	 end

end