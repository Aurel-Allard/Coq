class AddBookingIpToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :booking_ip, :string
  end
end
