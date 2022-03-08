class Speech < ApplicationRecord
  belongs_to :user
  belongs_to :training
  has_one_attached :audio, dependent: :destroy
  has_many :orders


  # validates :status, presence: true
  # Not using this anymore
  enum status: {
    pending_payment: 0,
    awaiting_correction: 1,
    corrected: 2
  }

  def current_status
    if corrected_by_teacher?
      "Corrected by teacher"
    elsif paid_order
      "Awaiting correction"
    else
      "Awaiting payment"
    end
  end

  def status_color
    if corrected_by_teacher?
      "recorded"
    elsif paid_order
      "paid"
    else
      "pending"
    end
  end

  def paid_order
    orders.find_by(state: 'paid')
  end

  def corrected_by_teacher?
    training.speeches.count.even?
  end

  PRICE_PER_SECOND = 5

  def seconds
    return 0 unless length

    (length.fdiv(1000)).round(0)
  end

  def total_price
    price = PRICE_PER_SECOND * seconds
    price < 50 ? 50 : price
  end

  # callback
  # before_validation :create_training

  # def create_training
  #   training = Training.create(user: user)
  #   self.training = training
  # end
end
