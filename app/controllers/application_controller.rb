class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
<<<<<<< HEAD
  
  private
=======
>>>>>>> wtony

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

<<<<<<< HEAD
  
  # def current_user
  #   if sessions[:user_id] && @current_user
  #     return @current_user
  #   elsif session[:user_id]
  #     return @current_user = User.find(session[:user_id])
  #   else
  #     return nil
  #   end
  # end
end
=======
end
>>>>>>> wtony
