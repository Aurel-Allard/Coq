class AddPriceToDetails < ActiveRecord::Migration[5.1]
  def change
    add_monetize :details, :price, currency: { present: false }
  end
end
