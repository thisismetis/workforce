class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @users = User.search(params[:search])
  end
end
