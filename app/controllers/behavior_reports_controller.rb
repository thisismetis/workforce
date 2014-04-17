class BehaviorReportsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def new
    @behavior_report = BehaviorReport.new
  end

  def create
    user = User.find(params[:user_id])
    @behavior_report = user.behavior_reports.new(behavior_report_params)
    if @behavior_report.save
      redirect_to user_behavior_reports_path
    else
      render :new
    end
  end

  def edit
    @behavior_report = find_behavior_report
  end

  def update
    behavior_report = find_behavior_report
    if behavior_report.update(behavior_report_params)
      redirect_to user_behavior_reports_path(behavior_report.user)
    else
      render :edit
    end
  end

  def destroy
    behavior_report = find_behavior_report
    behavior_report.destroy
    redirect_to user_behavior_reports_path(behavior_report.user)
  end

  private

  def behavior_report_params
    params.require(:behavior_report).
    permit(:description, :action_taken, :date)
  end

  def find_behavior_report
    BehaviorReport.find(params[:id])
  end
end
