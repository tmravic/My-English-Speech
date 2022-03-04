class Speech < ApplicationRecord
  belongs_to :user
  belongs_to :training
  has_one_attached :audio, dependent: :destroy

  def seconds
    return 0 unless length

    (length.fdiv(1000)).round(0)
  end

  # callback
  # before_validation :create_training

  # def create_training
  #   training = Training.create(user: user)
  #   self.training = training
  # end
end
