class UsersController < ApplicationController
  before_action :setup_user, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @user.save
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy

  end

  private

  def setup_user
    @user = User.find_by id: params[:id]
  end

  def user_params
    params.require(:user).permit(
      :user_name,
      :email,
      :email_confirmation,
      :password,
      :password_confirmation,
    )
  end
end
