class UsersController < ApplicationController
  def index
    if params[:query].present?
      @users = User.search_by_name(params[:query])
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if @user.admin
        redirect_to user_path(params[:id])
      else
        redirect_to root_path
      end
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(
      :admin, :name, :furigana, :address, :phone, :password,
      :email, :role, :job_exp, :started_date, :drive_licence,
      :pay_number, :licence1, :licence2, :licence3,
      :licence4, :licence5, :licence6, :licence7, :licence8,
      :licence9, :licence10, :licence11, :licence12, :licence13,
      :licence14, :licence15, :licence16, :licence17, :licence18,
      :licence19, :licence20, :level_employee, :healthy_exam,
      :document, :document_date, :passport, :passport_date,
      :active, :weekend, :night_shift, photos: []
      )
  end
end
