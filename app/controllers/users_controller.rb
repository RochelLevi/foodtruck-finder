class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
    @user.build_location
  end

  def create
    @user = User.new(users_params(:f_name, :l_name, :username, :password, :email))
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def users_params(*args)
    params.require(:user).permit(*args)
  end

end
