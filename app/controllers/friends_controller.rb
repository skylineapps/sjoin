class FriendsController < ApplicationController
  def create
  	@friendship = User.find(session[:user_id]).friendships.create(:friend_id => params[:friend_id])
  	if @friendship.save
  		flash[:notice] = "Successfully created friendship"
  		redirect_to :back
  	else
  		flash[:error] = "cannot add this friend"
  		redirect_to :back
  end
end

	def destroy
		@friendship = Friendship.find_by(user_id: session[:user_id], friend_id: params[:friend_id]).destroy
    flash[:notice] = "Successfully unfriended"
		redirect_to :back
	end
end
