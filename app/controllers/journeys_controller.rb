class JourneysController < ApplicationController
  # before_action :authenticate_admin!

  def index
    if current_user.admin
      @journeys = Journey.all
    else
      redirect_to root_path
    end
  end

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.token = "123456"
    @journey.save!
    redirect_to new_journey_detail_path(@journey)
  end

  def show
    @journey = Journey.find(params[:id])
    # UserMailer.confirmation(@journey).deliver_now
  end

  private

  def journey_params
      params.require(:journey).permit(:origin, :people_count, :destination_type)
  end
end
