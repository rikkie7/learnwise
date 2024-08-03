class Review < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  # Associations
  belongs_to :student, class_name: 'User', foreign_key: 'student_id', optional: true
end
