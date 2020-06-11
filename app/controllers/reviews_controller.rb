class ReviewsController < ApplicationController
  # before_action :authorize, only: [:new]

  def index
    @reviews = ReviewService.get_reviews()
  end

  def new
    @reviews = ReviewService.get_review(params[:id])
    render :new
  end

  # def create
  #   @review = Review.new(review_params)
  #   # api call goes here
  # end

  def show
    @single_review = ReviewService.get_review(params[:id])
    render :show
  end

  # def edit
  #   # api call goes here
  # end

  # def destroy
  #   # api call goes here
  # end

  # private
  #   def review_params
  #     params.require(:review).permit(:author, :content, :city, :country)
  #   end

end