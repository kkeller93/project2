class CarController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    @problem_area = Problem.all.map { |problem| problem.name }
  end

  def create
    @car = Car.new(character_params)
    @car.problem = Problem.all.sample
    @car.save
    redirect_to cars_path(@car)
  end

  def edit
    @car = Character.find(params[:id])
  end

  def update
    @car = Character.find(params[:id])
    @car.update(car_params)
    redirect_to @car
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  private
  def car_params
    params.require(:car).permit(:name, :img_url)
  end
end
