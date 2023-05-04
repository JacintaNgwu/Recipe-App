class RecipesController < ApplicationController
    def index
        @recipes = Recipe.includes(:user).where(user_id: current_user.id)
        @user = current_user
    end
    def show
        @recipe = Recipe.find(params[:id])
    end
    def destroy
       @recipe = Recipe.find(params[:id])
         @recipe.destroy
        redirect_to recipes_path, notice: "Recipe deleted"
    end
end