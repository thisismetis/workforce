class DepartmentsController < ApplicationController
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
  end

  private

  def department_params
    params.require(:department).permit(:name, :description)
  end

  def find_department
    Department.find(params[:id])
  end
end
