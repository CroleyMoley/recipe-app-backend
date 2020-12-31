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

    def update 
        ingredient = Ingredient.find(params(:id))

        if ingredient.update(ingredient_params)
            render json: ingredient
        end
    end

    def destroy
        ingredient.destroy
    end

    private
    def ingredient_params
        params.require(:ingredient).permit(:name, :recipe_id)
    end

end
