class ProfilesController < ApplicationController
  def show
    @profile = find_profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)
    redirect_to @profile
  end

  private

  def profile_params
    params.require(:profile).
    permit(:name, :about, :picture_url, :start_date, :birthday).
    merge(user_id: current_user.id)
  end

  def find_profile
    Profile.find(params[:id])
  end
end
