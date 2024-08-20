class Chatroom < ApplicationRecord
  belongs_to :course
  has_many :messages

  validates :name, presence: true
end
