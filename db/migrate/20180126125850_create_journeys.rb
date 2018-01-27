class CreateJourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :journeys do |t|
      t.integer :people_count
      t.string :destination_type

      t.timestamps
    end
  end
end
