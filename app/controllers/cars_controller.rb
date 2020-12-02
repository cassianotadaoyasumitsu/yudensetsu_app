class CarsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def car_params
    params.require(:car).permit(
      :car_name, :car_number, :car_plate
      )
  end
end
