class CommentsController < ApplicationController
	

	def new		
		@comment = Comment.new
	end

	def create		
		@comment = Comment.new(comment_params)		
		if @comment.save	  				
	  		redirect_to root_path
	  	else
	  		flash.now[:alert] = "Комментарий не добавлен!"
	  		redirect_to root_path	  	  				
	  	end	
	end

	private
	def comment_params
		params.require(:comment).permit(:content, :user_id, :photo_id)		
	end
end
