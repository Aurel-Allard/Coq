class Client < ApplicationRecord
  belongs_to :journey

  # validates :name, presence: true
  # validates :mail, presence: true, format: { with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/ }
  # validates :phone, format: { with: /0[1-9] (\d{2}\s){3}\d{2}/ }
end

# validates :name, :surname, :gender, :address, :birth_date, :mail, :phone, presence: true
