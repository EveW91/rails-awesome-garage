class Car < ApplicationRecord
  has_many :reviews
  has_many :favourites
  belongs_to :owner

  validates :model, :brand, :year, :fuel, presence: true
end
