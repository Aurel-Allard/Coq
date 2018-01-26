class Journey < ApplicationRecord
  validates :origin, :date, presence: true
end
