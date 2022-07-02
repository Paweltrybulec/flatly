class Offer < ApplicationRecord
  OFFER_STATUSES = {
    active: 'active',
    draft: 'draft',
    archived: 'archived'
  }.freeze

  enum status: OFFER_STATUSES
  belongs_to :price
  belongs_to :flat

  validates :name, presence: true
  validates :status, presence: true
  validates :expire_at, presence: true
end
