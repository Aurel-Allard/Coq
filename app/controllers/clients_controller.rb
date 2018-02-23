class ClientsController < ApplicationController
  def new
      @journey = Journey.find(params[:journey_id])
      @client = Client.new
    end

    def create
      @journey = Journey.find(params[:journey_id])
      @client = Client.new(client_params)
      @client.journey = @journey
      if @client.save
        redirect_to new_journey_charge_path(@journey)
      else
        render :new
      end
    end

    private

    def client_params
      params.require(:client).permit(:name, :surname, :gender, :address, :birth_date, :mail, :phone, :contact)
    end
end
