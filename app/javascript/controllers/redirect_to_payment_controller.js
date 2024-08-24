import { Controller } from "@hotwired/stimulus";
import {loadStripe} from '@stripe/stripe-js';

// Connects to data-controller="redirect-to-payment"
export default class extends Controller {
  static values = {
    stripeKey: String,
    checkoutSessionId: String
  }
  async connect() {
    const stripePromise = loadStripe(this.stripeKeyValue);
    const stripe = await stripePromise;
    console.log(stripe);
    stripe.redirectToCheckout({
      sessionId: this.checkoutSessionIdValue
    });
  }
}
