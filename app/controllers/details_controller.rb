class DetailsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @detail = Detail.new
    end

    def create
      @detail = Detail.new(details_params)
      @detail.journey = Journey.find(params[:journey_id])
      @detail.save!
      redirect_to new_journey_client_path
    end

    private

    def details_params
      params.require(:detail).permit(:is_a_surprise, :date, :housing_type, :points_of_attention, :price)
    end
end
