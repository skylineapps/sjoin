class SessionsController < ApplicationController
	def create
			user = User.find_by(first_name: params[:first_name], last_name: params[:last_name])
		if user 
			session[:user_id] = user.id
			redirect_to "/users/#{user.id}"
		else
			flash[:errors] = ['Invalid login']
			redirect_to :back
		end
	end

	def destroy
		reset_session
		redirect_to :root
	end
end