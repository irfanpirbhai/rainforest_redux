class SessionsController < ApplicationController
  def new
  # leave blank, b/c we are just going to render the view here
  end

  def create
    # "Create" a login, aka "log the user in"
    if user = User.authenticate(params[:username], params[:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    end
  end

  def destroy
  
  end

end
