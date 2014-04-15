class HomesController < ApplicationController
  def show
    @profiles = Profile.all
  end
end
