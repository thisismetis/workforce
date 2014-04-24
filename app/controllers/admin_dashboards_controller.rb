class AdminDashboardsController < ApplicationController

  def show
    @office_branch = OfficeBranch.new
    @department = Department.new
  end

end  
