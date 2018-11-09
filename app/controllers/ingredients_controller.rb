# class IngredientsController < ApplicationController
#   before_action :set_ingredient, only: [:edit]
#   # def edit
#   # end
#   #
#   # def update
#   #   if @ingredient.update(ingredient_params)
#   #     redirect_to cocktail_path(@cocktail)
#   #   else
#   #     render "new"
#   #   end
#   end
#
#   private
#
#   def ingredient_params
#     params.require(:ingredient).permit(:name)
#   end
#
#   def set_ingredient
#     @ingredient = Ingredient.find(params[:id])
#   end
# end
