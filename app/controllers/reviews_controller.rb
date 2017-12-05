class ReviewsController < ApplicationController

  def new 
  end

  def create
    @review = Review.new(review_params(:title, :content, :rating, :truck_id, :user_id))
  end

  def show

  end

  def edit
    @review = Review.new(review_params(:title, :content, :rating))
  end

  private

  def review_params(*args)
    params.require(:review).permit(*args)
  end

end
