require 'rubygems'
require 'twitter'


class TwitterController < ApplicationController


	 def tweets
        client = Twitter::REST::Client.new do |config|
          config.consumer_key = 'NGlS57JbX25axxKpUEKPMu1w2'
          config.consumer_secret = 'z28dneIlsfKfxTSBu0l2dnqocTZA9H4k5joBaezfNX2h1Oyf4u'
        end
    
        tweets = client.get('https://api.twitter.com/1.1/trends/place.json?id=1')

        render json: tweets

	end

end