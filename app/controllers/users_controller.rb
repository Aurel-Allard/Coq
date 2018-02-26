class UsersController < ApplicationController
  before_action :set_journey

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    @user.password = @journey.token
    @user.journey = @journey
    if @user.save
      redirect_to new_journey_charge_path(@journey)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :surname, :gender, :address, :birth_date, :email, :phone, :contact)
  end

  def set_journey
    @journey = Journey.find(params[:journey_id])
    authorize @journey
  end
end
