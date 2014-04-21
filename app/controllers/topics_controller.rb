class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end

  def create
    performance_review = PerformanceReview.find(params[:performance_review_id])
    user = performance_review.user
    @topic = performance_review.topics.new(topic_params)
    if @topic.save
      redirect_to performance_review_path(@topic.performance_review)
    else
      render :new
    end
  end

  def edit
    @topic = find_topic
  end

  def update
    topic = find_topic
    if topic.update(topic_params)
      redirect_to performance_review_path(topic.performance_review)
    else
      render :edit
    end
  end

  def destroy
    topic = find_topic
    topic.destroy
    redirect_to user_performance_reviews_path(topic.performance_review.user)
  end

  private

  def topic_params
    params.require(:topic).
    permit(:category, :rating, :note, :performance_review_id)
  end

  def find_topic
    Topic.find(params[:id])
  end
end
