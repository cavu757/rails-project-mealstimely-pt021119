class FoodsController < ApplicationController
  before_action :food_new

  def new
    not_cook
  end

  def create
    raise params.inspect
  end

  def index
  end

  def show
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
