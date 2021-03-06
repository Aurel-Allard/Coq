class JourneysController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if current_user.admin
      @journeys = policy_scope(Journey).order(created_at: :desc)
    else
      user_not_authorized
    end
  end

  def new
    @journey = Journey.new
    authorize @journey
  end

  def create
    @journey = Journey.new(journey_params)
    authorize @journey
    @journey.booking_ip = request.remote_ip
    @journey.status = "Journey created"

    number_of_people = @journey.people_count[/[123456789]/]
    @journey.update(people_count: number_of_people)

    if @journey.save
      redirect_to new_journey_detail_path(@journey)
    else
      render :new
    end
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
