# frozen_string_literal: true

class Tenant < User
  devise :registerable, :recoverable, :rememberable

  has_many :flats
end
