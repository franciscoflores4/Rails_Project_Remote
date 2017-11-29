class ApplicationController < ActionController::Base
  include Clearance::Controller
  include SessionHelper
   protect_from_forgery with: :exception
   helper_method :current_order
   include SessionsHelper

   def current_order
   	if !session[:order_id].nil?
   		Order.find(session[:order_id])
   	else
   		Order.new
    end
   end
end 
