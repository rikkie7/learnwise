class Order < ApplicationRecord
  belongs_to :user
  belongs_to :course

  monetize :amount_cents
end
