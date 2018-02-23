class Client < ApplicationRecord
  belongs_to :journey

  validates :name, :surname, :gender, :address, :phone, presence: true
  validates :mail, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }
  # validates :phone, format: { with: /0[1-9] (\d{2}\s){3}\d{2}/ }
end
