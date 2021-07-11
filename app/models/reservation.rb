class Reservation < ApplicationRecord
  belongs_to :customer
  has_many :reservation_kayaks
  has_many :kayaks, through: :reservation_kayaks

  LOCATION_OPTIONS = [['Lake Johnson', 'Lake Johnson'],
  ['Wheeler Lake', 'Wheeler Lake'],
  ['Lake Lynn', 'Lake Lynn']]
end
