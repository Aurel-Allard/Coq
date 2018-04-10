class AddTravelWithCarToDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :details, :travel_with_car, :boolean, null: false, default: false
  end
end
