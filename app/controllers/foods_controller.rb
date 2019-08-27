class FoodsController < ApplicationController
  before_action :food_new

  def new
    not_cook
  end

  def create
    @food = Food.find_or_create_by(name: food_params[:name]) do |f|
      f.name = food_params[:name]
      f.picture = food_params[:picture]
      f.description = food_params[:description]
    end
    redirect_to food_path(@food)
  end

  def index
    @foods = Food.all

  end

  def show
    @food = Food.find(params[:id])
    @meal = Meal.new
  end

  def edit
    not_cook
  end

  def destroy
    not_cook
  end

  private

  def food_new
    @food = Food.new
  end

  def food_params
    params.require(:food).permit(:name, :picture, :description)
  end

  def not_cook
    if current_user_not_cook
      redirect_to "/foods"
    end
  end

end
