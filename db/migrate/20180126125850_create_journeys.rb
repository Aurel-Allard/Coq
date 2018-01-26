class CreateJourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :journeys do |t|
      t.boolean :is_a_surprise
      t.integer :people_count
      t.string :origin
      t.string :destination_type
      t.date :date
      t.string :housing_type
      t.string :activity_type
      t.text :points_of_attention
      t.integer :price

      t.timestamps
    end
  end
end
