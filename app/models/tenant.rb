# frozen_string_literal: true

class Tenant < User
  devise :registerable, :recoverable, :rememberable

  has_many :offers, foreign_key: 'user_id'
end
