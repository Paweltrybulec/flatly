# frozen_string_literal: true

class Offer < ApplicationRecord
  OFFER_STATUSES = {
    published: 'published',
    draft: 'draft',
    archived: 'archived'
  }.freeze

  enum status: OFFER_STATUSES
  belongs_to :tenant, class_name: "Tenant"
  belongs_to :price
  belongs_to :flat

  accepts_nested_attributes_for :flat
  accepts_nested_attributes_for :price

  validates :name, presence: true
  validates :status, presence: true
  validates :expire_at, presence: true
end
