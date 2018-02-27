class AddTravellerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :traveller_2_name, :string
    # add_column :users, :traveller_2_surname, :string
    add_column :users, :traveller_2_gender, :string
    add_column :users, :traveller_2_age, :string
    add_column :users, :traveller_2_email, :string

    add_column :users, :traveller_3_name, :string
    # add_column :users, :traveller_3_surname, :string
    add_column :users, :traveller_3_gender, :string
    add_column :users, :traveller_3_age, :string
    add_column :users, :traveller_3_email, :string

    add_column :users, :traveller_4_name, :string
    # add_column :users, :traveller_4_surname, :string
    add_column :users, :traveller_4_gender, :string
    add_column :users, :traveller_4_age, :string
    add_column :users, :traveller_4_email, :string

    add_column :users, :traveller_5_name, :string
    # add_column :users, :traveller_5_surname, :string
    add_column :users, :traveller_5_gender, :string
    add_column :users, :traveller_5_age, :string
    add_column :users, :traveller_5_email, :string

    add_column :users, :traveller_6_name, :string
    # add_column :users, :traveller_6_surname, :string
    add_column :users, :traveller_6_gender, :string
    add_column :users, :traveller_6_age, :string
    add_column :users, :traveller_6_email, :string
  end
end
