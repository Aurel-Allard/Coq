class UsersController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @user = User.new
    end

    def create
      @journey = Journey.find(params[:journey_id])
      @user = User.new(user_params)
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
end
