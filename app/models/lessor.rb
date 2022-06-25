# frozen_string_literal: true

class Lessor < User
  devise :registerable, :recoverable, :rememberable
end
