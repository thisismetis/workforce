class DepartmentsController < ApplicationController
  before_filter :admin_users_only, only: [:new, :edit]

  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to @department
    else
      render :new
    end
  end

  def show
    @department = find_department
    @profiles = @department.profiles
  end

  def edit
    @department = find_department
  end

  def update
    @department = find_department
    if @department.update(department_params)
      redirect_to @department
    else
      render :edit
    end
  end

  def destroy
    department = find_department
    department.destroy
    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name, :description)
  end

  def find_department
    Department.find(params[:id])
  end

  def admin_users_only
    department = find_department
    unless current_user.admin?
      redirect_to department
    end
  end

end
