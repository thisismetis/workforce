class ProfilesController < ApplicationController
  def show
    @profile = find_profile
    @user = @profile.user
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    redirect_to @profile
  end

  def edit
    @profile = find_profile
  end

  def update
    @profile = find_profile
    @profile.update(profile_params)
    redirect_to @profile
  end

  def destroy
    profile = find_profile
    profile.destroy
    redirect_to :root
  end

  private

  def profile_params
    params.require(:profile).
      permit(:name, :about, :start_date, :birthday, :avatar)
  end

  def find_profile
    Profile.find(params[:id])
  end
end
