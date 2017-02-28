class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    @problem_area = Problem.all.map { |problem| problem.problem_title }
  end

  def create
    # puts "=========================#{params.inspect}"
    # puts "=========================#{params[:car][:problem].inspect}"
    # puts "=========================#{Problem.find_by(problem_title: params[:problem])}"
    @car = Car.new(car_params)
    @car.problem = Problem.find_by(problem_title: params[:car][:problem])
    @car.save
    redirect_to cars_path(@car)
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
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
    params.require(:car).permit(:year, :make, :model, :mileage, :customer, :img_url)
  end
end
