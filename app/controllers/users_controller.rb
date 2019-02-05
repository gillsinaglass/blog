class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def show
  end

  def edit
  end

  def update
  end

private

  def user_params
    params.require(:user).permit(:name)
  end

  def get_user
    @user = User.find(params[:id])
  end




end
