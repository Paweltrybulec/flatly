class Flat < ApplicationRecord
  belongs_to :tenant, foreign_key: "user_id"
  belongs_to :address
  has_many :offers
end
