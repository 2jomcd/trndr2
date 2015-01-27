class TwitterController < ApplicationController
	def trends
		binding.pry
		# TwitterClient.trends.each do |trend|
		# 		trends.push(trend.name)
		# end
		# res = TwitterClient.get("https://api.twitter.com/1.1/trends/23424977.json")
		# trends = []
		# TwitterClient.trends.each do |trend|
		# 	trends.push(trend.name)
		# end

		# render json:res.body	
	end
end