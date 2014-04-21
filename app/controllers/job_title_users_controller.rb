class JobTitleUsersController < ApplicationController
  def create
    @job_title = JobTitleUser.new(job_title_params)
    if @job_title.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def job_title_params
    params.require(:job_title_user).permit(:job_title_id, :user_id)
  end

end
