class JourneysController < ApplicationController
  def index
    @journeys = Journey.all
  end

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.save!
    redirect_to new_journey_detail_path(@journey)
  end

  def summary
    @journey = Journey.find(params[:id])
  end

  private

  def journey_params
      params.require(:journey).permit(:origin, :people_count, :destination_type)
  end
end
