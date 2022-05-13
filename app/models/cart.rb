class Cart < ApplicationRecord
  belongs_to :users
  has_many :boats
end
