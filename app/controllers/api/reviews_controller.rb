class Api::ReviewsController < ApplicationController
  before_action :set_cocktail
  before_action :set_review, only: [:destroy, :update]
  def index
    render json: @cocktail.reviews
  end

  def show
    render json: @review
  end 

  def create
    review = @cocktail.reviews.new(review_params)
    if review.save
      render json: review
    else
      render json: review.errors, status: 422
    end
  end

  def update
    if @review.update((review_params))
      render json: @review
    else
      render json: @review.errors, status: 422
    end
  end

  def destroy
    @review.destroy
    render json: @review
  end

  private 

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_review
    @review = @cocktail.reviews.find(params[:id])
  end

  def review_params
    params.permit(:comment, :rating, :cocktails_id)
  end
    
end
