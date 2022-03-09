class Speech < ApplicationRecord
  belongs_to :user
  belongs_to :training
  has_one_attached :audio, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :title, format: { with: /[a-zA-Z0-9]/, message: "must be in English only" }, presence: true

  validates :transcript, format: { with: /[a-zA-Z0-9]/, message: "must be in English only" }, presence: true

  validates :notes, format: { with: /[a-zA-Z0-9]/, message: "must be in English only" }, presence: true


  # with_options presence: true, format: { with: /[a-zA-Z0-9]/, message: 'Plese use English only' } do
  #   validates :title
  #   validates :transcript
  #   validates :notes
  # end


  # validates :status, presence: true
  # Not using this anymore
  enum status: {
    "Normal (24 hours - 5円/s)": 0,
    "Fast (18 hours - 7円/s)": 1,
    "Faster (12 hours - 9円/s)": 2,
    "Fastest (16 hours - 10円/s)": 3
  }

  def current_status
    if corrected_by_teacher?
      "Corrected by #{self.training.speeches.last.user.first_name}"
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
