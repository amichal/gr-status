class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def sign_in_path
    '/auth/google_apps'
  end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue
    nil
  end
  helper_method :current_user
  helper_method :sign_in_path
end
