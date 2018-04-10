class DetailsController < ApplicationController
  before_action :set_journey

  def new

      if @journey.booking_ip == request.remote_ip && @journey.status = "Journey created"
        @detail = Detail.new
        authorize @detail
      else
        user_not_authorized
      end
    end

    def create
      @detail = Detail.new(details_params)
      authorize @detail

      @detail.journey = @journey
      @detail.start_date = params[:start_date]
      @detail.end_date = params[:end_date]

      @journey.update(status: "Details created")

      if @detail.save
        redirect_to new_journey_user_path(@journey)
      else
        render :new
      end
    end

    private

    def details_params
      params.require(:detail).permit(:is_a_surprise, :travel_with_car, :housing_type, :activity_type, :points_of_attention)
    end

    def set_journey
      @journey = Journey.find(params[:journey_id])
      authorize @journey
    end
end
