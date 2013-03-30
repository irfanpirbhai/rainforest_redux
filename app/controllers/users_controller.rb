class UsersController < ApplicationController
  
  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to products_path, :notice => "User successfully created!"
    else
      render :action => :new
    end

  end
end
