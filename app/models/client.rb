class Client < ApplicationRecord
  belongs_to :journey

  validates :name, presence: true
  validates :phone, format: { with: /0[1-9] (\d{2}\s){3}\d{2}/ }
end

# validates :name, :surname, :gender, :address, :birth_date, :mail, :phone, presence: true
