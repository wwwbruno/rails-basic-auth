class ApplicationController < ActionController::Base
  helper_method :current_admin

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_admin
    @current_admin ||= User.find(session[:admin_id]) if session[:admin_id]
  end

  def authenticate_admin!
  	redirect_to root_url, :alert => "You are not logged in!" unless @current_admin
  end
end
