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

    private
    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
    
end
