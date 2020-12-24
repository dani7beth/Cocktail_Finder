class Api::CocktailsController < ApplicationController

  #render json of all the cocktails
  def index
    render json: Cocktail.all
  end

end
