class ChargesController < ApplicationController
  before_action :set_amount

  def new
    @journey = Journey.find(params[:journey_id])
  end

  def create
    @journey = Journey.find(params[:journey_id])

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # Should store this customer id and re-use it.
      amount:       @amount,
      description:  "Paiement de séjour",
      currency:     'eur'
    )

    @journey.detail.update(payment: charge.to_json, state: 'paid')
    redirect_to journey_charges_path(@journey)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_journey_charge_path(@journey)
end

private

  def set_amount
    @journey = Journey.find(params[:journey_id])
    @amount = @journey.detail.price.cents;
  end

  def set_journey
    params.require(:journey).permit(:origin, :people_count, :destination_type)
  end
end