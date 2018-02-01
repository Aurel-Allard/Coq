class ClientsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @client = Client.new
    end

    def create
      @client = Client.new(client_params)
      @client.journey = Journey.find(params[:journey_id])
      @client.save!
      redirect_to journeys_path
    end

    private

    def client_params
      params.require(:client).permit(:gender, :name, :surname, :address, :birth_date, :phone, :mail, :contact)
    end
end
