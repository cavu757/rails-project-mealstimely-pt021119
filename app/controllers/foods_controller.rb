class FoodsController < ApplicationController
  before_action :food_new

  def new
  end

  def create
    raise params.inspect
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def food_new
    @food = Food.new
  end

end
