class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  belongs_to :user
  belongs_to :course
end
