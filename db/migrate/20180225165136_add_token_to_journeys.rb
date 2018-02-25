class AddTokenToJourneys < ActiveRecord::Migration[5.1]
  def change
    add_column :journeys, :token, :string
  end
end
