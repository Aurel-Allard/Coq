class JourneysController < ApplicationController
  # skip_before_action :authenticate_user!, except: [:show]

  def index
    if current_user.admin
      @journeys = policy_scope(Journey).order(created_at: :desc)
    else
      redirect_to root_path
    end
  end

  def new
    @journey = Journey.new
    authorize @journey
  end

  def create
    @journey = Journey.new(journey_params)
    authorize @journey
    @journey.token = "123456"
    @journey.save!
    redirect_to new_journey_detail_path(@journey)
  end

  def show
    @journey = Journey.find(params[:id])
    authorize @journey
  end

  private

  def journey_params
      params.require(:journey).permit(:origin, :people_count, :destination_type)
  end
end
