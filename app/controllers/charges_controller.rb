class ChargesController < ApplicationController
  before_action :set_amount, :set_journey

  def new
    if not @journey.booking_ip == request.remote_ip && @journey.status = "Client created"
      user_not_authorized
    end
  end

  def create
    # customer = Stripe::Customer.create(
    #   source: params[:stripeToken],
    #   email:  params[:stripeEmail]
    # )

    # charge = Stripe::Charge.create(
    #   customer:     customer.id,   # Should store this customer id and re-use it.
    #   amount:       100, #@amount,
    #   description:  "Paiement de séjour",
    #   currency:     'eur'
    # )

    @journey.detail.update(payment: charge.to_json, state: 'paid')
    @journey.update(status: "Paid")

    # redirect_to pages_confirmation_path
    # redirect_to journey_charges_path(@journey)

  # rescue Stripe::CardError => e
  #   flash[:alert] = e.message
  #   redirect_to new_journey_charge_path(@journey)
end

private

  def set_amount
    @journey = Journey.find(params[:journey_id])
    authorize @journey
    @amount = @journey.detail.price.cents;
  end

  def set_journey
    @journey = Journey.find(params[:journey_id])
    authorize @journey
  end
end
