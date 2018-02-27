class AddTravellerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :traveler_two_name, :string
    add_column :users, :traveler_two_surname, :string
    add_column :users, :traveler_two_gender, :string
    add_column :users, :traveler_two_age, :string
    add_column :users, :traveler_two_email, :string

    add_column :users, :traveler_three_name, :string
    add_column :users, :traveler_three_surname, :string
    add_column :users, :traveler_three_gender, :string
    add_column :users, :traveler_three_age, :string
    add_column :users, :traveler_three_email, :string

    add_column :users, :traveler_four_name, :string
    add_column :users, :traveler_four_surname, :string
    add_column :users, :traveler_four_gender, :string
    add_column :users, :traveler_four_age, :string
    add_column :users, :traveler_four_email, :string

    add_column :users, :traveler_five_name, :string
    add_column :users, :traveler_five_surname, :string
    add_column :users, :traveler_five_gender, :string
    add_column :users, :traveler_five_age, :string
    add_column :users, :traveler_five_email, :string

    add_column :users, :traveler_six_name, :string
    add_column :users, :traveler_six_surname, :string
    add_column :users, :traveler_six_gender, :string
    add_column :users, :traveler_six_age, :string
    add_column :users, :traveler_six_email, :string
  end
end
