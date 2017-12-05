class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
  end


  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      # you are who you say you are

      session[:user_id] = user.id
      flash[:message] = "Welcome #{user.name}"
      redirect_to user_path(user)
    else

      # sign in failed
      flash[:message] = "Wrong username and password"
      redirect_to signin_path

    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to signin_path
  end



end
