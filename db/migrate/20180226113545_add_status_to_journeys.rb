class AddStatusToJourneys < ActiveRecord::Migration[5.1]
  def change
    add_column :journeys, :status, :string, default: "Pending"
  end
end
