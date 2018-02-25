class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  belongs_to :journey

  validates :name, :surname, :gender, :address, :phone, presence: true
  validates :email, presence: true, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }
  validates :phone, format: { with: /0[1-9] (\d{2}\s){3}\d{2}/ }
end
