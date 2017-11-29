class SessionsController < ApplicationController
	include Clearance::Controller
	include SessionsHelper
	def new
	end

	def create
		user = User.authenticate(params[:session][:email], params[:session][:password])

		if user.nil?
			flash[:error] = "Invalid email/password combination"
			redirect_to sign_in_path
		else
			sign_in user redirect_to user
		end
	end

	def destroy
		sign_out
		redirect_to sign_in_path
	end
end
