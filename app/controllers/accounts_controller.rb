class AccountsController < ApplicationController
	before_filter :save_login_state, :only => [:new, :create]
	has_secure_password
	
	def new
    @user = Account.new 
  end
  def create
    @user = Account.new(params[:email])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
end

def self.authenticate(email, login_password)
  if  EMAIL_REGEX.match(email)    
    user = Account.find_by_email(email)
  else
    user = Account.find_by_username(email)
  end
  if user && user.match_password(login_password)
    return user
  else
    return false
  end
end 
end
