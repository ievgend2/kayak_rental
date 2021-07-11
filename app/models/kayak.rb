class Kayak < ApplicationRecord
  belongs_to :customer
  has_many :reservation_kayaks
  has_many :reservations, through: :reservation_kayaks
end
