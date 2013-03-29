class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
   
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_path
      flash[:notice] = "You're logged in!"
    else
      flash[:error] = "Login attempt failed"
      render :action => "new"
    end
 
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to products_path
  end
end
