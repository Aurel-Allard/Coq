class Detail < ApplicationRecord
  belongs_to :journey
  monetize :price_cents
end
