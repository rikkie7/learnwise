class Course < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :sessions
  has_many :bookings

  validates :price, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: %w(Technology, Education, Cooking, Gardening, Sports, Others) }
  validates :type, presence: true, inclusion: { in: %w(Group, Private) }

end
