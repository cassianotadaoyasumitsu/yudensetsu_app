class CarpuntosController < ApplicationController
  before_action :find_car, except: [:destroy]

  def new
    @carpunto = Carpunto.new
  end

  def create
    @carpunto = Carpunto.new(carpunto_params)
    @carpunto.car = @car
    if @carpunto.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @carpunto = Carpunto.find(params[:id])
    @car = @carpunto.car_id
    @carpunto.destroy
    redirect_to car_path(@carpunto.car)
  end

  private

  def find_car
    @car = Car.find(params[:car_id])
  end

  def carpunto_params
    params.require(:carpunto).permit(:driver, :start, :end, :oil, :oiltime, :fuel, :fueltime, :car_id)
  end
end
