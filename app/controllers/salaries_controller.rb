class SalariesController < ApplicationController
  before_filter :admin_users_only, only: [:index, :new, :edit]

  def index
    @user = find_user
  end

  def new
    @salary = Salary.new
  end

  def create
    @user = find_user
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

  def find_user
    User.find(params[:user_id])
  end

  def find_salary
    Salary.find(params[:id])
  end

  def admin_users_only
    user = find_user
    unless current_user.admin?
      redirect_to [user, :profile]
    end
  end
end
