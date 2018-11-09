class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.find()
    @dose = Dose.new(ingredient: @ingredient)
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    # raise
    # @dose.ingredient = @ingredient


    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def destroy
  end

  def dose_params
    # params.require(:dose).permit(:description)
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
