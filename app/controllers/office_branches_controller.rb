class OfficeBranchesController < ApplicationController
  def index
    @office_branches = OfficeBranch.all
  end
  
  def new
    @office_branch = OfficeBranch.new
  end
  
  def create
    @office_branch = OfficeBranch.new(office_branch_params)
    if @office_branch.save
      redirect_to @office_branch
    else
      render :new
    end
  end
  
  def show
    @office_branch = find_office_branch
  end
  
  def edit
    @office_branch = find_office_branch 
  end
  
  def update
    @office_branch = find_office_branch
    if @office_branch.update(office_branch_params)
      redirect_to @office_branch
    else
      render :edit
    end
  end
  
  def destroy
    office_branch = find_office_branch
    office_branch.destroy
    redirect_to office_branches_path
  end
  
  private
  
  def office_branch_params
    params.require(:office_branch).permit(:location)
  end
  
  def find_office_branch
    OfficeBranch.find(params[:id])
  end
end
