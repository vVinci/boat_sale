class Boat < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :carts
  has_many :users, through: :carts
end
