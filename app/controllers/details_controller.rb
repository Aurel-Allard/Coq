class DetailsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @detail = Detail.new
    end

    def create
      @journey = Journey.find(params[:journey_id])
      @detail = Detail.new(details_params)
      @detail.journey = @journey
      if @detail.save
        redirect_to new_journey_client_path(@journey)
      else
        render :new
      end
    end

    private

    def details_params
      params.require(:detail).permit(:date, :is_a_surprise, :housing_type, :activity_type, :points_of_attention)
    end
end
