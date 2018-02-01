class Journey < ApplicationRecord
  has_one :detail, dependent: :destroy
  has_one :client, dependent: :destroy
end
