class ReviewsController < ApplicationController
  def new
    @review = Review.new(restaurant_params)
  end

  def create
    @review = Review.new(restaurant_params)
    if @review.save
      redirect_to restaurant_reviews_path(@review)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
