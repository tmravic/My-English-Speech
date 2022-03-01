class Speech < ApplicationRecord
  belongs_to :user
  belongs_to :training
  has_one_attached :audio, dependent: :destroy
end
