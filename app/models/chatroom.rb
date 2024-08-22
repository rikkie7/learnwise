class Chatroom < ApplicationRecord
  belongs_to :course
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
