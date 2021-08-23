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

  # def create
  #   cocktail = @current_user.cocktails.new(cocktail_params)
  #   file = params[:file]
    
  #   if file
  #     begin
  #       ext = File.extname(file.tempfile)
  #       cloud_image = Cloudinary::Uploader.upload(file, public_id: file.original_filename, secure: true, resource_type: :auto)
  #       cocktail.image = cloud_image['secure_url']
  #     rescue => e
  #       render json: { errors: e }, status: 422
  #       return
  #     end
  #   end
    
  #   if cocktail.save
  #     render json: cocktail
  #   else
  #     render json: { errors: cocktail.errors.full_messages }, status: 422
  #   end
  # end
   def create 
    file = params[:image]
    if file
      begin
        cloud_image = Cloudinary::Uploader.upload(file, public_id: file.original_filename, secure: true, resource_type: :image)
        cocktail = current_user.cocktails.new( image: cloud_image['secure_url'], name: params[:name], served: params[:served],
        garnish: params[:garnish],drinkware: params[:drinkware],ingredients: params[:ingredients],instructions: params[:instructions],
        ,timing: params[:timing])
      rescue => e
        render json: { errors: e }, status: 422
        return
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
