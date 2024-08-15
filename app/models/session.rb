class Session < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validate :date_not_in_past

  belongs_to :course

  private

  def start_time_before_end_time
    if start_time >= end_time
      errors.add(:start_time, "must be before the end time")
    end
  end

  def date_not_in_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end

  # Method to check if a session spans multiple days
  def multi_day?
    end_time.present? && end_time.to_date > start_time.to_date
  end
end
