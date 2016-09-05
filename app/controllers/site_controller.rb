class SiteController < ApplicationController
  def index  	
  	@photos = Photo.all.page params[:page]
  	@comment = Comment.new  	
  end  	
end

