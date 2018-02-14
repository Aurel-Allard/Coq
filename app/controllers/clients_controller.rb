class ClientsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @client = Client.new
    end

    def create
      @journey = Journey.find(params[:journey_id])
      @client = Client.new(client_params)
      @client.journey = @journey
      @client.save!
      redirect_to journey_path(@journey)
    end

    private

    def client_params
      params.require(:client).permit(:gender, :name, :surname, :address, :birth_date, :phone, :mail, :contact)
    end
end
