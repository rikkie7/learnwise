class Review < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5, message: "must be between 1 and 5" }

  # Associations
  belongs_to :student, class_name: 'User', foreign_key: 'student_id', optional: true
end
