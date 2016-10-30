class ProfilesController < ApplicationController
  before_action :find_user, only: [:index, :new, :show, :edit, :update, :destroy]
  before_action :find_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
    @params = params
  end

  def new
    @profile = Profile.new
  end

  def edit

  end

  def create
    @profile = Profile.create(profile_params)
    if @profile.save
      redirect_to @profile
    else
      render new
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end


  private

    def find_profile
      @profile = Profile.find(params[:id])
    end

    def find_user
      @user = User.find(params[:user_id])
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :phone, :user_id )
    end
end
