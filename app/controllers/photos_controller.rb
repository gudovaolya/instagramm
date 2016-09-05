class PhotosController < ApplicationController

	def new
		@photo = Photo.new		
	end

	def create		
		@photo = Photo.new(photo_params)		 
	  	if @photo.save	  				
	  		redirect_to root_path
	  	else
	  		flash.now[:alert] = "Фото не добавлено!"
	  		render 'new'  				
	  	end		  	
	end

	def destroy
	  	Photo.destroy(params[:id])
	  	redirect_to :back
	end


	def upvote 
	  @photo = Photo.find(params[:id])
	  @photo.upvote_by current_user
	  redirect_to :back
	end  

	def downvote
	  @photo = Photo.find(params[:id])
	  @photo.downvote_by current_user
	  redirect_to :back
	end

	private
	def photo_params
		params.require(:photo).permit(:image, :title, :user_id)		
	end
end

