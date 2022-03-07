class Order < ApplicationRecord
  belongs_to :user
  belongs_to :speech
  monetize :amount_cents
end
