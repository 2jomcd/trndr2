class FavoritesController < ApplicationController
  def create
  	user_id = User.find(current_user).id
  	media_id = params[:mediaId]
  	country = params[:country]
  	Favorite.create(user_id: user_id, media_id: media_id, country: country)
  end

  def index
  	current_user_id = User.find(current_user).id
  	@favorites = Favorite.where (user_id = current_user_id)
  	render json: @favorites
  end
end
