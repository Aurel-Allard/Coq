class CreateCients < ActiveRecord::Migration[5.1]
  def change
    create_table :cients do |t|
      t.integer :gender
      t.string :name
      t.string :surnam
      t.string :address
      t.date :birth_date
      t.string :phone
      t.string :mail
      t.boolean :contact

      t.timestamps
    end
  end
end
