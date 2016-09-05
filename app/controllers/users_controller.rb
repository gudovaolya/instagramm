class UsersController < ApplicationController
  	def show
  		@user = User.find(params[:id])
  		@photos = Photo.where(user_id: @user.id)  	
  	end

	def following
	    @title = "Ваши подписки"
	    @user = User.find(params[:id])
	    @users = @user.followed_users
	    render 'show_follow'    
	end

	def followers
	    @title = "Ваши подписчики"
	    @user = User.find(params[:id])
	    @users = @user.followers
	    render 'show_follow'
	end

end
