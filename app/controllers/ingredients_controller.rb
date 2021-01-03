class IngredientsController < ApplicationController
    
    def index
        render json: Ingredient.all
    end

    def create
        ingredient = Ingredient.new(ingredient_params)
        if ingredient.save
            render json: ingredient
        end
    end

    def destroy
        ingredient = Ingredient.find(params[:id])
        ingredient.destroy
    end



    private

    def set_ingredient
        ingredient = Ingredient.find_by(id: params[:id])
    end


    def ingredient_params
        params.require(:ingredient).permit(:name, :recipe_id)
    end

end
