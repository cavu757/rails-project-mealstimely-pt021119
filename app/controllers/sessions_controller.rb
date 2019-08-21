class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: user_params[:name])
    if @user
      if @user.authenticate(user_params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash.alert = "Could not log you in"
        redirect_to signin_path
      end
    else
      flash.alert = "User not found"
      redirect_to signin_path
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
