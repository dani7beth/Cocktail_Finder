class Api::CocktailsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_cocktail, only: [:update, :destroy]
  #render json of all the cocktails
  def index
    render json: Cocktail.all
  end

  #search function
  def search
    @cocktails = Cocktail.search(params[:query])
    render json: @cocktails
  end

  def create
    cocktail = @current_user.cocktails.new(cocktail_params)
    if cocktail.save
      render json: cocktail
    else
      render json: {errors: cocktail.errors}, status: 422
    end
  end

  def update
    @cocktail.update(cocktail_params)
    render json: @cocktail
  end

  def destroy
    @cocktail.destroy
    render json: @cocktail
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
  def cocktail_params
    params.require(:cocktail).permit(:name, :served, :garnish, :drinkware, :ingredients, :instructions, :image, :timing, :user_id)
  end
  
end
