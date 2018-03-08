class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.boolean :is_a_surprise?
      t.date :start_date
      t.date :end_date
      t.string :housing_type
      t.string :activity_type
      t.text :points_of_attention
      t.jsonb :payment
      t.string :state
      t.references :journey, foreign_key: true

      t.timestamps
    end
  end
end
