class DetailsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @detail = Detail.new
    end

    def create
      @detail = Detail.new(review_params)
      @detail.journey = Journey.find(params[:journey_id])
      @detail.save!
      redirect_to journeys_path
    end

    private

    def review_params
      params.require(:detail).permit(:is_a_surprise, :date, :housing_type, :points_of_attention)
    end
end
