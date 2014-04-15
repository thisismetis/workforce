class HomesController < ApplicationController
  def show
    @profile = Profile.all
  end
end
