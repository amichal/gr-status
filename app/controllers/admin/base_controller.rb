class Admin::BaseController < ApplicationController
	before_filter :require_login
	layout 'admin'

	private

	def require_login
		unless logged_in?
			flash[:error] = "You must be signed in"
			redirect_to sign_in_path
		end
	end

	def logged_in?
		!!current_user
	end
end
