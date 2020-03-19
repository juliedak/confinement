class ReviewsController < ApplicationController

  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.activity = @activity
    @review.save
    redirect_to activity_path(@activity)
  end

  def update

  end

  def destroy

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
