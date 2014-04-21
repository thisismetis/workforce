class ProfilesController < ApplicationController
  def show
    @user = find_user
    @profile = @user.profile
    @department = @user.department
    @office_branch = @user.office_branch
  end

  def new
    @user = find_user
    @profile = Profile.new
    @user = @profile.user
  end

  def create
    user = find_user
    @profile = user.create_profile(profile_params)
    redirect_to [user, :profile]
  end

  def edit
    @user = find_user
    @profile = @user.profile
    @job_title_user = JobTitleUser.new
  end

  def update
    user = find_user
    @profile = user.profile
    @profile.update(profile_params)
    redirect_to [user, :profile]
  end

  def destroy
    user = find_user
    profile = user.profile
    profile.destroy
    redirect_to :root
  end

  private

  def profile_params
    params.require(:profile).
      permit(:name, :about, :start_date, :birthday, :avatar)
  end

  def find_user
    User.find(params[:user_id])
  end
end
