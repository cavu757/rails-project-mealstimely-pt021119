class MealsController < ApplicationController

def index
  @meals = Meal.all
end

def create
  @meal = Meal.create(meal_params)
  @food = Food.find(@meal[:food_id])
  @eater = User.find(@meal[:user_id])
  @cook = User.find(@food.cook_id)
  redirect_to meal_path(@meal)
end

def show
  @meal = Meal.find(params[:id])
  @food = Food.find(@meal[:food_id])
  @eater = User.find(@meal[:user_id])
  @cook = User.find(@food.cook_id)
  @comment = Comment.new
  @comments = @meal.comments
end

private

def meal_params
  params.require(:meal).permit(:food_id, :user_id)
end

end
