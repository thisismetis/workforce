class ProfilesController < ApplicationController
  def show
    @profile = find_profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    redirect_to @profile
  end

  private

  def profile_params
    params.require(:profile).
      permit(:name, :about, :picture_url, :start_date, :birthday)
  end

  def find_profile
    Profile.find(params[:id])
  end
end
