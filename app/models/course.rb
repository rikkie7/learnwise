class Course < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :sessions
  has_many :bookings

  validates :price, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: %w[technology education cooking gardening sports others] }
  validates :size, presence: true, inclusion: { in: %w[group private] }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
