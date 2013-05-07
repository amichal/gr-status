class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		redirect_to cookies[:return_to], notice: "Signed in!"
	end

	def destroy
		session[:user_id] = nil
		redirect_to cookies[:return_to], notice: "Signed out!"
	end
end