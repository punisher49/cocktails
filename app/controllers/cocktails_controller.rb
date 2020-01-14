class CocktailsController < ApplicationController
  before_action :set_cocktail,  only: [:show, :edit, :update, :destroy]

  def index
    @cocktail = Cocktail.all.order("created_at DESC")
  end

  def show

  end

  def new
    @cocktail = Cocktail.new
  end

  def edit

  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: "Cocktail was successfully updated"
    else
      render :edit, alert: "Your cocktail wasn't successfully updated"
    end
end

  def create
    # @cocktail = Cocktail.new(cocktail_params)
    # if @cocktail.save
    @cocktail = @current_user.cocktails.create(cocktail_params)
    if @cocktail.persisted?
      redirect_to @cocktail, notice: "You created a cocktail"
    else
      render :new, alert: "Your cocktail wasn't created"
    end
  end

  def destroy
  @cocktail.destroy

  redirect_to cocktails_path, notice: "Cocktails has been deleted"


  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :image, :creator, :ingredients, :instructions)
  end
end
