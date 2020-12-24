class RecipesController < ApplicationController

    def index
        render json: Recipe.all.map {|recipe| RecipeSerializer.new(recipe)}
    end

    
    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe)
        end

    end

    private 
    def recipe_params
        params.require(:recipe).permit(:title)
    end


end
