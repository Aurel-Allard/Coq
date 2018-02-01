class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.integer :gender
      t.string :name
      t.string :surname
      t.string :address
      t.date :birth_date
      t.string :phone
      t.string :mail
      t.boolean :contact

      t.timestamps
    end
  end
end
