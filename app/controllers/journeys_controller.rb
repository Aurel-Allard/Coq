class JourneysController < ApplicationController
  include Wicked::Wizard

  steps :first_step, :second_step

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.save!
    redirect_to journey_path(@journey)
  end

  def journey_params
      params.require(:journey).permit(:destination_type, :people_count)
  end
end
