class PerformanceReviewsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def new
    @performance_review = PerformanceReview.new
  end

  def create
    user = User.find(params[:user_id])
    @performance_review = user.performance_reviews.new(performance_review_params)
    if @performance_review.save
      redirect_to new_performance_review_topic_path(@performance_review)
    else
      render :new
    end
  end

  def show
    @performance_review = find_performance_review
  end

  def edit
    @performance_review = find_performance_review
  end

  def update
    performance_review = find_performance_review
    if performance_review.update(performance_review_params)
      redirect_to user_performance_reviews_path(performance_review.user)
    else
      render :edit
    end
  end

  def destroy
    performance_review = find_performance_review
    performance_review.destroy
    redirect_to user_performance_reviews_path(performance_review.user)
  end

  private

  def performance_review_params
    params.require(:performance_review).
    permit(:date)
  end

  def find_performance_review
    PerformanceReview.find(params[:id])
  end
end
