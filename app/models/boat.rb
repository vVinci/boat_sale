class Boat < ApplicationRecord
  validates :name, :price, presence: true
end
