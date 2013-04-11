class SessionsController < ApplicationController
	def create
		raise env["omniauth.auth"].to_yaml
		# the following piece was copied directly from the Railscast, but results in an "invalid credentials" error.
		# I have yet to figure out how to get it to let me actually enter a password again, as it only did that once.
		#user = User.from_omniauth(env["omniauth.auth"])
		#session[:user_id] = user.uid
		#redirect_to 'root_url', notice: "Signed in!"
	end

	def destroy
		session[:user_id] = nil
		redirect_to 'root_url', notice: "Signed out!"
	end
end