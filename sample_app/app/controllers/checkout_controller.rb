class CheckoutController < ApplicationController

  def create
    product_id = params[ :id]
    if product_id.nil?
      redirect_to static_pages_home_path
      return
    end

    # Setting up a Stripe Session for payment
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: product_id,
        description: product_id,
        amount: 200,
        currency: 'usd',
        quantity: 1
        }],
        success_url: checkout_success_url,
        cancel_url: checkout_cancel_url
    )

    respond_to do |format|
      format.js
    end
  end

  def success
  end

  def cancel
  end
end
