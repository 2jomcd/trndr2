class MediaController < ApplicationController
  
  def create
  	  title =  params[:title]
  	  artist =  params[:artist]
  	  kind =  params[:kind]
  	  site =  params[:site]
  	  img =  params[:img]
  	  prevw =  params[:prevw]
  	  actors =  params[:actors]
  	  Medium.create(title: title, artist: actors, kind: kind, site: site, img: img, prevw: prevw)
  	  render json: Medium.last.id
  end

  def index
  	media_id = params[:media_id]
  	@favoriteMedia = Medium.find_by id: media_id
  	render json: @favoriteMedia
  end

end

