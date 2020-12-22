class RecipesController < ApplicationController

    def index
        render json: Recipe.all
    end

    
    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: recipe
        end

    end

    private 
    def recipe_params
        params.require(:recipe).permit(:title)
    end


end
