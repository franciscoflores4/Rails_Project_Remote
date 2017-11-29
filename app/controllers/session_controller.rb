class SessionController < ApplicationController
include Clearance::Controller
  def login
    #Login Form
end

def create
	user = User.find_by(name: params[:name])
	if user and user.authenticate(params[:password])

		session[:user_id] = user.id
		redirect_to blah_path
	else
		redirect_to session_new_path
	end
end

def destroy
	session[:user_id] = nil
	redirect_to session_new_path, alert:"Successfully logged out"
end
  def login_attempt
   authorized_user = Account.authenticate(params[:email],params[:password])
  if authorized_user
    session[:session_id] = authorized_user.id
    flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.email}"
    redirect_to(:action => 'home')
  else
    flash[:notice] = "Invalid Username or Password"
    flash[:color]= "invalid"
render "login"	
end
end
end
