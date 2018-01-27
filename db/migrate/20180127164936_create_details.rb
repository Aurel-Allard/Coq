class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.boolean :is_a_surprise
      t.string :origin
      t.date :date
      t.string :housing_type
      t.string :activity_type
      t.text :points_of_attention
      t.integer :price
      t.references :journey, foreign_key: true

      t.timestamps
    end
  end
end
