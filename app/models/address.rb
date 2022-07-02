class Address < ApplicationRecord
  has_one :flat

  validates :street, presence: true
  validates :building_number, presence: true
  validates :post_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :flat_number, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :floor, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
