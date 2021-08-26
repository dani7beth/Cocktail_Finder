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
    cocktail = Cocktail.new()
    file = params[:image]
    
    if file
      begin
        cloud_image = Cloudinary::Uploader.upload(file, resource_type: :image)
        
        cocktail.image = cloud_image['secure_url']
        cocktail = Cocktail.new(image: cloud_image['secure_url'], name: params[:name], served: params[:served], garnish: params[:garnish], drinkware: params[:drinkware], ingredients: params[:ingredients], instructions: params[:instructions], timing: params[:timing], user_id: params[:user_id])
      rescue => e
        render json: { errors: e }, status: 422
        return
      end
    end
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
