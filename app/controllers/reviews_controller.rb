class ReviewsController < ApplicationController

  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @activity = Activity.find(params[:activity_id])
    @review.activity = @activity
    if @review.save!
       sleep 3
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :activity_id)
  end
end
