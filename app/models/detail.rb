class Detail < ApplicationRecord
  belongs_to :journey
  monetize :price
end
