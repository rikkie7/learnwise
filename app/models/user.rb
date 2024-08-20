class User < ApplicationRecord
  has_one_attached :photo
  # Reviews Associations
  has_many :reviews
  has_many :courses
  has_many :messages

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
