class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  def index
    users = User.all
    render json: users
  end

  def profile
    render json: { user: current_user }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: UserSerializer.new(@user)}, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.save
      render json: {user: UserSerializer.new(user)}, status: :accepted 
    else
      render json: { error: 'failed to update job lead' }, status: :not_acceptable
    end
  end

  def users
    render json: current_user.users, status: :accepted
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :activities)
  end
end
