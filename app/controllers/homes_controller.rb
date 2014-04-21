class HomesController < ApplicationController
  def show
    @profiles = Profile.all
    @office_branches = OfficeBranch.all
  end
end
