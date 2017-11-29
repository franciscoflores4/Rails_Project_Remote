class UserController < ApplicationController
  def new
  	@user = User.new
  end

  def create

  	if @user.save
  		redirect_to @user, notice: 'User was succesfully created.'
  	else
  		render action: "new"
  	end
  end

  def show
  	@user = User.find(params[:id])
  end
end
