class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @reviews = Review.find(params[:id])
  end

  def update
    @reviews = Review.find(params[:id])
    @reviews.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
