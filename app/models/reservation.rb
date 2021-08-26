class Reservation < ApplicationRecord
  belongs_to :customer
  has_many :reservation_kayaks, dependent: :destroy
  has_many :kayaks, through: :reservation_kayaks

  validates :name, presence: true, length: { minimum: 2 }


  LOCATION_OPTIONS = [['Lake Johnson', 'Lake Johnson'],
  ['Wheeler Lake', 'Wheeler Lake'],
  ['Lake Lynn', 'Lake Lynn']]
end
