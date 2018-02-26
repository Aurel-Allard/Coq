class DetailsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      authorize @journey

      if @journey.booking_ip == request.remote_ip && @journey.status = "Journey created"
        @detail = Detail.new
        authorize @detail
      else
        user_not_authorized
      end
    end

    def create
      @journey = Journey.find(params[:journey_id])
      @detail = Detail.new(details_params)

      authorize @journey
      authorize @detail

      @journey.update(status: "Details created")
      @detail.journey = @journey
      if @detail.save
        redirect_to new_journey_user_path(@journey)
      else
        render :new
      end
    end

    private

    def details_params
      params.require(:detail).permit(:date, :is_a_surprise, :housing_type, :activity_type, :points_of_attention)
    end
end
