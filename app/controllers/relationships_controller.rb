class RelationshipsController < ApplicationController

  def create 
    other_user = User.find(params[:relationship][:followed_id])
    current_user.follow!(other_user) 
    redirect_to :back  
    # respond_to do |format|
    #   format.html { redirect_to current_user }
    #   format.js {}
    # end 
  end

  def destroy   
    other_user = Relationship.find(params[:id]).followed
    current_user.unfollow!(other_user) 
    redirect_to :back   
    # respond_to do |format|
    #   format.html { redirect_to current_user }
    #   format.js {}
    # end
  end

end
