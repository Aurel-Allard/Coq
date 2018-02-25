class Journey < ApplicationRecord
  has_one :detail, dependent: :destroy
  has_one :user, dependent: :destroy
end
