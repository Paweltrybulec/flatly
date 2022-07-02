class Flat < ApplicationRecord
  belongs_to :tenant, foreign_key: "user_id"
  belongs_to :address
  has_many :offers

  has_many_attached :images

  validates :description, presence: true
  validates :square_footage, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
