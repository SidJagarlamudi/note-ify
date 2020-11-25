
class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
end

  def create
    user = User.create!(user_params)
    if user
        render json: user
    else 
        render json: { error: 'failed to create user'}, status: :not_acceptable
    end
  end
  
  def show 
    user = User.find(params[:id])
    render json: user
  end
  
  private
  def user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end
end
