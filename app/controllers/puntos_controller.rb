class PuntosController < ApplicationController
  before_action :find_user, only: [:index, :new, :create]

  def index
    @puntos = Punto.all
  end

  def show
    @punto = current_user.puntos.all
  end

  def new
    @current_company = Company.find_by(name: params[:company])
    # @punto = Punto.new
    if !@user.puntos.last || @user.puntos.last.out
      @punto = Punto.new
    else
      @punto = @user.puntos.last
    end
  end

  def create
    @punto = Punto.new(punto_params)
    @punto.user = @user
    @punto.company_id = "1"
    if @punto.save
      redirect_to new_user_punto_path
    else
      flash.alert = "No punto"
      render :new
    end
  end

  def edit
    @current_company = Company.find_by(name: params[:company])
    @punto = Punto.find(params[:id])
  end

  def update
    @punto = Punto.find(params[:id])
    if @punto.in
      @punto.update(punto_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def punto_params
    params.require(:punto).permit(
      :date, :in, :out, :note,
      :day, :night, :day_off,
      :genba_id, :user_id, :period, :company_id
      )
  end
end

