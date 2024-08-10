class Course < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_location,
  against: [:title, :location],
  associated_against: {
    user: [:first_name, :last_name]
  },
  using: {
    tsearch: { prefix: true }
  }

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
