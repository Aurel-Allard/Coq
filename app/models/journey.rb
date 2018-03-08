class Journey < ApplicationRecord
  has_one :detail, dependent: :destroy
  has_one :user, dependent: :destroy

  validates :origin, :people_count, :destination_type, presence: true
end
