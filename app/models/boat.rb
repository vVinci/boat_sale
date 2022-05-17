class Boat < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :cart
end
