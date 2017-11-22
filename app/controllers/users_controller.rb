class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[user_params])
    if @user.save
      #Success!
    else
      render 'new'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:nickname, :name, :surname,
                                  :email, :password, :password_confirmation)
    end
end
