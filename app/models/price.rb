class Price < ApplicationRecord
  belongs_to :offer

  validates :lent_price, presence: true, numericality: { greater_than: 0 }
  validates :rent_price, presence: true, numericality: { greater_than: 0 }
  validates :media_price, presence: true, numericality: { greater_than: 0 }
end
