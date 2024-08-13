class Event < ApplicationRecord
  validates :name, presence: true
  validates :start_time, presence: true
  validates :location, presence: true
  validates :description, length: { maximum: 500 }
end
