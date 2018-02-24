class Detail < ApplicationRecord
  belongs_to :journey
  monetize :price_cents

  validates :housing_type, :activity_type, :points_of_attention, presence: true
end
