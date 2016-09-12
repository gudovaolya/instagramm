class SiteController < ApplicationController
  def index  	
  	@photos = Photo.all.order(created_at: :desc).page params[:page]
  	@comment = Comment.new  	
  end  	
end

