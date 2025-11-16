"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import QRCode from "react-qr-code";
import "../../components/styles/checkout.css";
import toast, { Toaster } from "react-hot-toast";
import useSetting from "../../hooks/useSetting";
//import "../styles/beforeLoading.css";
import { useRouter } from "next/navigation";
import { useCart } from "../../context/CartContext";

export default function CheckoutPage() {
  // Form state
  const router = useRouter(); //  Next.js Router
  const [name, setName] = useState("");
  const [phone, setPhone] = useState("");
  const [email, setEmail] = useState("");
  const [emailerror, setEmailError] = useState(false);
  const [address, setAddress] = useState("");
  const [shippingPhone, setShippingPhone] = useState("");
  const [paymentMethod, setPaymentMethod] = useState("");
  const [your_bkash_number, setYourBkashNumber] = useState("");
  const [bkash_transaction_id, setBkashTransactionId] = useState("");
  const [couponCode, setCouponCode] = useState("");
  const [error, setError] = useState("");
  const [discount, setDiscount] = useState(0);
  const [disAmt, setDisAmt] = useState(0);
  const [grandTotal, setGrandTotal] = useState(0);
  const [selectedDeliveryCharge, setSelectedDeliveryCharge] = useState(0);
  const [orderNotes, setOrderNotes] = useState("");
  // Client-only cart state
  const { cart, clearCart } = useCart();

  const { settingData, loading } = useSetting();
  // const { categoryData } = useCategories();

  const subtotal = cart.reduce((acc, item) => acc + item.price * item.qty, 0);
  const total =
    discount > 0
      ? subtotal - disAmt + selectedDeliveryCharge
      : subtotal + selectedDeliveryCharge;

  const applyCoupon = () => {
    if (couponCode === "DISCOUNT10") {
      const amt = subtotal * 0.1;
      setDiscount(10);
      setDisAmt(amt);
      setGrandTotal(subtotal - amt);
      setError("");
    } else {
      setError("Invalid coupon code");
      setDiscount(0);
      setDisAmt(0);
    }
  };

  const confirmOrder = async (e) => {
    e.preventDefault();
    if (typeof window === "undefined") return;

    const cart = JSON.parse(localStorage.getItem("cart")) || [];

    if (cart.length === 0) {
      console.log("Cart is empty!", "Please add items to cart.");
      return;
    }

    if (paymentMethod === "bkash") {
      if (!your_bkash_number?.trim()) {
        showValidationError("Bkash Number Required", "Enter bkash number.");
        return;
      }
      if (!bkash_transaction_id?.trim()) {
        showValidationError(
          "Bkash Transaction Required",
          "Enter transaction number."
        );

        return;
      }
    }

    if (!name?.trim()) {
      showValidationError("Name Required", "Please enter your full name.");
      return;
    }

    if (!email?.trim()) {
      showValidationError("Email Required", "Please enter your email address.");
      return;
    }

    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (!emailPattern.test(email.trim())) {
      showValidationError(
        "Invalid Email",
        "Please enter a valid email address."
      );
      return;
    }

    if (!phone?.trim()) {
      showValidationError("Phone Required", "Please enter your phone number.");
      return;
    }

    if (!address?.trim()) {
      showValidationError("Address Required", "Please enter your address.");
      return;
    }

    if (!shippingPhone?.trim()) {
      showValidationError(
        "Shipping Phone Required",
        "Please enter your shipping phone."
      );
      return;
    }

    if (!paymentMethod?.trim()) {
      showValidationError(
        "Payment Method Required",
        "Please select a payment method."
      );
      return;
    }

    const coupon = localStorage.getItem("apply_coupon") || null;
    const couponoffer = localStorage.getItem("coupon-offer") || null;

    const data = {
      name,
      email,
      phone,
      address,
      shipping_phone: shippingPhone,
      devliery_charge: selectedDeliveryCharge,
      bkash_number: your_bkash_number,
      transaction_id: bkash_transaction_id,
      paymentMethod,
      cart,
      coupon,
      couponoffer,
    };

    try {
      const response = await fetch(
        `${process.env.NEXT_PUBLIC_API_BASE}/public/confirm-order`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            cart,
            coupon,
            couponoffer,
            data,
          }),
        }
      );

      const result = await response.json();

      if (result.success) {
        toast.success("Order Confirmed!");
        // Clear
        clearCart();
        localStorage.removeItem("apply_coupon");
        localStorage.removeItem("coupon-offer");
        window.dispatchEvent(new Event("cart-updated"));

        const email = result.checkEmail;
        const password = result.password;
        const order_id = result.order_id;
        router.push(
          "/order-confirm/?email=" +
            email +
            "&password=" +
            password +
            "&order_id=" +
            order_id
        );
      } else {
        toast.error(result.message || "Order failed.");
      }
    } catch (error) {
      toast.error("Network Error. Try again.");
      console.error("Order Error:", error);
    }
  };

  function showValidationError(title, message) {
    toast.error(`${title}: ${message}`);
  }

  return (
    <div className="checkout-page">
      <div className="checkout-container">
        <form className="checkout-form">
          <div className="checkout-row">
            {/* Billing & Shipping */}
            <Toaster position="top-right" />
            <div className="checkout-billing">
              <h4>Billing Details</h4>

              <div className="form-group">
                {/* <label>Full Name<sup>*</sup></label> */}
                <input
                  type="text"
                  className="form-control"
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  placeholder="Enter your full name"
                />
              </div>

              <div className="form-group">
                {/* <label>Email<sup>*</sup></label> */}
                <input
                  type="email"
                  className="form-control"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="Enter your email"
                />
              </div>

              <div className="form-group">
                {/* <label>Phone</label> */}
                <input
                  type="text"
                  className="form-control"
                  value={phone}
                  onChange={(e) => setPhone(e.target.value)}
                  placeholder="Enter your phone number"
                />
              </div>

              <h4>Shipping Address</h4>

              <div className="form-group">
                <input
                  type="text"
                  className="form-control"
                  value={shippingPhone}
                  onChange={(e) => setShippingPhone(e.target.value)}
                  placeholder="Enter your shipping phone number"
                />
              </div>

              <div className="form-group">
                {/* <label>Address<sup>*</sup></label> */}

                <input
                  type="text"
                  className="form-control"
                  value={address}
                  onChange={(e) => setAddress(e.target.value)}
                  placeholder="Enter your shipping address"
                />
              </div>

              <h4>Payment method</h4>

              <div className="form-group">
                {/* <label>Order Notes</label> */}
                <select
                  className="form-control"
                  value={paymentMethod}
                  onChange={(e) => setPaymentMethod(e.target.value)}
                >
                  <option value="">-Select Payment Method-</option>
                  <option value="cash">Cash on Delivery</option>
                  <option value="bkash">Bkash</option>
                </select>
              </div>

              <div className="form-group">
                {paymentMethod === "bkash" && (
                  <div>
                    <hr />
                    <div style={{ textAlign: "center" }}>
                      <QRCode
                        value={
                          settingData.bkash_number || "No number available"
                        }
                        size={150}
                        className="forqrcode"
                      />
                      <br />
                      <strong>Account Type:</strong> Personal <br />
                      <strong>Account Number:</strong>{" "}
                      {settingData.bkash_number}
                    </div>
                    <hr />

                    <div className="form-group">
                      <input
                        className="form-control"
                        placeholder="Your Bkash Account Number"
                        value={your_bkash_number}
                        onChange={(e) => {
                          const input = e.target.value;
                          // Allow only digits and max 11 characters
                          if (/^\d{0,11}$/.test(input)) {
                            setYourBkashNumber(input);
                          }
                        }}
                        type="text"
                      />
                    </div>

                    <div className="form-group">
                      <input
                        className="form-control"
                        placeholder="Your Bkash Transaction ID"
                        value={bkash_transaction_id}
                        type="text"
                        onChange={(e) => setBkashTransactionId(e.target.value)}
                      />
                    </div>
                  </div>
                )}
              </div>
            </div>

            {/* Order Summary */}
            <div className="checkout-summary">
              <h3 className="checkout-heading">Your Order</h3>

              <div className="order-content">
                {cart.length === 0 ? (
                  <p className="empty-cart">Your cart is empty</p>
                ) : (
                  <>
                    <table className="order-table">
                      <tbody>
                        {cart.map((item) => (
                          <tr
                            key={`${item.id}-${
                              item.selectedAttr
                                ? JSON.stringify(item.selectedAttr)
                                : item.id
                            }`}
                          >
                            <td className="product-info">
                              <div className="product-item">
                                <img
                                  src={item.thumnail_img || "/placeholder.png"}
                                  alt={item.name}
                                  className="product-image"
                                />
                                <div className="product-details">
                                  <p className="product-name">
                                    {item.name}&nbsp;({item.qty} × Tk.
                                    {item.price})
                                  </p>
                                </div>
                              </div>
                            </td>
                            <td className="product-price">
                              Tk.{(item.price * item.qty).toFixed(2)}
                            </td>
                          </tr>
                        ))}
                      </tbody>
                    </table>

                    <div className="order-totals">
                      <p className="subtotal">
                        Subtotal: <span>Tk.{subtotal.toFixed(2)}</span>
                      </p>
                      <p className="total">
                        Total: <span>Tk.{subtotal.toFixed(2)}</span>
                      </p>
                    </div>
                  </>
                )}

                <button
                  type="submit"
                  className="checkout-btn"
                  onClick={confirmOrder}
                >
                  Proceed to checkout
                </button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
}
