class AdminDashboardsController < ApplicationController

  def show
    @office_branch = OfficeBranch.new
    @department = Department.new
    @job_title = JobTitle.new
  end

end
