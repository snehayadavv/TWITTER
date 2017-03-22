class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  def user_signed_in?
     	!session[:user_id].nil?
      end


    def current_user
     	if user_signed_in?
             		User.find(session[:user_id])
            	end
      end
end
