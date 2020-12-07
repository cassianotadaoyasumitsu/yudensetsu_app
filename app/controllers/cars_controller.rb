class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show

  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to car_path
  end

  private

  def car_params
    params.require(:car).permit(
      :car_name, :car_number, :car_plate
      )
  end
end
