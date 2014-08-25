class RestrictController < ApplicationController
  before_action :authenticate_admin!, except: :log_in
  
  def dashboard
  end

  def log_in

  	admin = Admin.authenticate(params[:login],params[:password])

  	if admin
  	  session[:admin_id] = admin.id
  	  redirect_to dashboard_url, :notice => "You are now logged in!"
  	else
  	  redirect_to root_url, :alert => "Bad credentials"
  	end
  end
end
