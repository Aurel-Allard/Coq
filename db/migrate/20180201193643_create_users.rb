class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :address
      t.date :birth_date
      t.string :phone
      t.boolean :contact
      t.references :journey, foreign_key: true

      t.timestamps
    end
  end
end
