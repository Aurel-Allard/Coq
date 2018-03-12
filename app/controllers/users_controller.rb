class UsersController < ApplicationController
  before_action :set_journey

  def new
    @user = User.new
    authorize @user

    start_date = @journey.detail.start_date
    end_date = @journey.detail.end_date
    people_count = @journey.people_count.to_i

    @pricing = Pricing.new(start_date, end_date, people_count)
    @pricing.number_of_days

    if not @journey.booking_ip == request.remote_ip && @journey.status = "Details created"
      user_not_authorized
    end
  end

  def create
    @user = User.new(user_params)
    authorize @user

    @journey.update(status: "Client created")

    @journey.token = "123456"
    @user.password = @journey.token
    @user.journey = @journey
    if @user.save!
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
