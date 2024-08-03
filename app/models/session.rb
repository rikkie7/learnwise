class Session < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :start_time_before_end_time

  belongs_to :course

  private
  def start_time_before_end_time
    if start_time >= end_time
      errors.add(:start_time, "must be before the end time")
    end
  end

end
