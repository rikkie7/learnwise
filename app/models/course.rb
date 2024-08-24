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

  has_one_attached :photo
  belongs_to :user
  accepts_nested_attributes_for :user

  has_one :chatroom, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :sessions, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :learning_topics, dependent: :destroy

  validates :price, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: %w[technology education cooking gardening sports others] }
  validates :size, presence: true, inclusion: { in: %w[group private] }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :start_date_before_end_date


  geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?

  # enum format: {
  #   online: 0,
  #   in_person: 1
  # }

  monetize :price_cents

  private

  def start_date_before_end_date
    return if start_date.blank? || end_date.blank?

    if start_date >= end_date
      errors.add(:start_date, "must be before the end date")
    end
  end

end
