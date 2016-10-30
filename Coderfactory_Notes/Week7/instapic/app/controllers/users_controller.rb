class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @params = params
  end

  def new
    @user = User.new
  end

  def edit

  end

  def update
      if @user.update_attributes(user_params)
        # Handle a successful update.
        redirect_to users_path
      else
        render new_user_path
      end
    end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end


  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password_hash)
    end

end
