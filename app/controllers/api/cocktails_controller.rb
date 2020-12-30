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
  
end
