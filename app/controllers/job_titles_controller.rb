class JobTitlesController < ApplicationController
  def index
    @job_titles = JobTitle.all
  end

  def new
    @job_title = JobTitle.new
  end

  def create
    @job_title = JobTitle.new(job_title_params)
    if @job_title.save
      redirect_to @job_title
    else
      render :new
    end
  end

  def show
    @job_title = find_job_title
  end

  def edit
    @job_title = find_job_title 
  end

  def update
    @job_title = find_job_title
    if @job_title.update(job_title_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    job_title = find_job_title
    job_title.destroy
    redirect_to root_path
  end

  private

  def job_title_params
    params.require(:job_title).permit(:name)
  end

  def find_job_title
    JobTitle.find(params[:id])
  end

end

