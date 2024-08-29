class OrdersController < ApplicationController
  def create
    course = Course.find(params[:course_id])
    order  = Order.create!(course: course, amount: course.price, state: 'pending', user: current_user)
    
    image_url = course.image_url.present? ? course.image_url : nil

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: 'aud',
          unit_amount: course.price_cents,
          product_data: {
            images: image_url.present? ? [image_url] : [],
            name: course.title
          },
        },
        quantity: 1
      }],
      mode: 'payment',
      success_url: course_order_url(course, order),
      cancel_url: course_order_url(course, order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_course_order_payment_path(course, order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    if @order.state == "paid"
      redirect_to dashboard_path, notice: 'Payment was successful! You are now enrolled in the course.'
    else
      redirect_to dashboard_path, notice: 'Payment is pending.'
    end
  end
end
