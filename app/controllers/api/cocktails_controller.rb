class Api::CocktailsController < ApplicationController

  #render json of all the cocktails
  def index
    render json: Cocktail.all
  end

  #search function
  def search
    @cocktails = Cocktail.search_by_term(params[:query])

    render json: @cocktails
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    if cocktail.save
      render json: cocktail
    else
      render json: {errors: cocktail.errors}, status: 422
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :served, :garnish, :drinkware, :ingredients, :instructions, :image, :timing)
  end
  
end
