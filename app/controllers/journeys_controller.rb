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
    redirect_to journey_path(@journey)
  end

  def show
    # @journey = Journey.find(params[:id])
  end

  def journey_params
      params.require(:journey).permit(:destination_type, :people_count)
  end
end
