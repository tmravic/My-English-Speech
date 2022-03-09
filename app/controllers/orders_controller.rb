class OrdersController < ApplicationController
  def create
    speech = Speech.find(params[:speech_id])
    order  = Order.create!(speech: speech, amount: speech.total_price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: speech.title,
        images: [speech.user.photo],
        amount: speech.total_price,
        currency: 'jpy',
        quantity: 1
      }],
      success_url: order_path(order),
      cancel_url: order_path(order)
    )

    order.update(checkout_session_id: session.id)
    authorize order
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
  end
end
