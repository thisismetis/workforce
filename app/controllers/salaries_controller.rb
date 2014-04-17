class SalariesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @salaries = @user.salaries.order("date DESC")
  end

  def new
    @salary = Salary.new
  end

  def create
    @user = User.find(params[:user_id])
    @salary = @user.salaries.create(salary_params)
    redirect_to @user.profile
  end

  private

  def salary_params
    params.require(:salary).
      permit(:salary, :description, :date)
  end

end
