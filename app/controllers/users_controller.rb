class UsersController < ApplicationController
  before_action :set_journey

  def new
    @user = User.new
    authorize @user

    if not @journey.booking_ip == request.remote_ip && @journey.status = "Details created"
      user_not_authorized
    end
  end

  def create
    @user = User.new(user_params)
    authorize @user

    @journey.update(status: "Client created")

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
