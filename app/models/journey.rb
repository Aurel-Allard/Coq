class Journey < ApplicationRecord
  has_one :detail, dependent: :destroy
end
