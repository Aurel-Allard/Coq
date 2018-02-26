class AddBookingIpToJourneys < ActiveRecord::Migration[5.1]
  def change
    add_column :journeys, :booking_ip, :string
  end
end
