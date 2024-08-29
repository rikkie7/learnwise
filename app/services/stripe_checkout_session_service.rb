class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'succeeded')
    Booking.create!(user: order.user, course: order.course, status: true)
  end
end
