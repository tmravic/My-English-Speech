class Training < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :speeches

end
