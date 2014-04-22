class SalariesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def new
    @salary = Salary.new
  end

  def create
    @user = User.find(params[:user_id])
    @salary = @user.salaries.new(salary_params)
    if @salary.save
      redirect_to [@user, :profile]
    else
      render :new
    end
  end

  def edit
    @salary = find_salary
  end

  def update
    @salary = find_salary
    if @salary.update(salary_params)
      redirect_to user_salaries_path(@salary.user)
    else
      render :edit
    end
  end

  def destroy
    salary = find_salary
    user = salary.user
    salary.destroy
    redirect_to user_salaries_path(user)
  end

  private

  def salary_params
    params.require(:salary).
      permit(:salary, :description, :date)
  end

  def find_salary
    Salary.find(params[:id])
  end
end
