"use client"; // <-- Add this at the top

import Link from "next/link";
import { useCart } from "../../context/CartContext";
const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";

export const metadata = {
  title: "Checkout - Bir E-Commerce",
  description: "Securely complete your order and payment on Bir E-Commerce.",
  keywords: [
    "checkout",
    "payment",
    "online shopping",
    "bir e-commerce",
    "order summary",
    "secure checkout",
  ],
  openGraph: {
    title: "Checkout - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/checkout`,
    siteName: "Bir E-Commerce",
    images: [
      {
        url: "/og-image-checkout.jpg",
        width: 1200,
        height: 630,
        alt: "Checkout Page Preview - Bir E-Commerce",
      },
    ],
    type: "website",
  },
  alternates: {
    canonical: `${baseUrl}/checkout`,
  },
};

export default function checkOutPage() {
  const { cart, updateQty, removeFromCart } = useCart();
  const subtotal = cart.reduce((acc, item) => acc + item.price * item.qty, 0);
  const total = subtotal;

  return (
    <div className="ps-page--simple">
      <div className="ps-checkout ps-section--shopping">
        <div className="container">
          <div className="ps-section__content">
            <form
              className="ps-form--checkout"
              action="https://nouthemes.net/html/martfury/do_action"
              method="post"
            >
              <div className="row">
                <div className="col-xl-7 col-lg-8 col-md-12 col-sm-12  ">
                  <div className="ps-form__billing-info">
                    <h3 className="ps-form__heading">Billing Details</h3>
                    <div className="form-group">
                      <label>
                        First Name<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="text" />
                      </div>
                    </div>
                    <div className="form-group">
                      <label>
                        Last Name<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="text" />
                      </div>
                    </div>
                    <div className="form-group">
                      <label>
                        Company Name<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="text" />
                      </div>
                    </div>
                    <div className="form-group">
                      <label>
                        Email Address<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="email" />
                      </div>
                    </div>
                    <div className="form-group">
                      <label>
                        Country<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="text" />
                      </div>
                    </div>
                    <div className="form-group">
                      <label>
                        Phone<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="text" />
                      </div>
                    </div>
                    <div className="form-group">
                      <label>
                        Address<sup>*</sup>
                      </label>
                      <div className="form-group__content">
                        <input className="form-control" type="text" />
                      </div>
                    </div>
                    <div className="form-group">
                      <div className="ps-checkbox">
                        <input
                          className="form-control"
                          type="checkbox"
                          id="create-account"
                        />
                        <label htmlFor="create-account">
                          Create an account?
                        </label>
                      </div>
                    </div>
                    <div className="form-group">
                      <div className="ps-checkbox">
                        <input
                          className="form-control"
                          type="checkbox"
                          id="cb01"
                        />
                        <label htmlFor="cb01">
                          Ship to a different address?
                        </label>
                      </div>
                    </div>
                    <h3 className="mt-40"> Addition information</h3>
                    <div className="form-group">
                      <label>Order Notes</label>
                      <div className="form-group__content">
                        <textarea
                          className="form-control"
                          rows={7}
                          placeholder="Notes about your order, e.g. special notes for delivery."
                          defaultValue={""}
                        />
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-xl-5 col-lg-4 col-md-12 col-sm-12  ">
                  <div className="ps-form__total">
                    <h3 className="ps-form__heading">Your Order</h3>
                    <div className="content">
                      <div className="ps-block--checkout-total">
                        <div className="ps-block__content">
                          <div className="ps-block__content">
                            {cart.length === 0 ? (
                              <p>Your cart is empty</p>
                            ) : (
                              <>
                                <table className="table ps-block__products">
                                  <tbody>
                                    {cart.map((item) => (
                                      <tr
                                        key={`${item.id}-${JSON.stringify(
                                          item.selectedAttr
                                        )}`}
                                      >
                                        <td>
                                          <div
                                            style={{
                                              display: "flex",
                                              alignItems: "center",
                                              gap: "10px",
                                            }}
                                          >
                                            {/* Product Thumbnail */}
                                            <img
                                              src={
                                                item.thumnail_img ||
                                                "/placeholder.png"
                                              }
                                              alt={item.name}
                                              style={{
                                                width: "50px",
                                                height: "50px",
                                                objectFit: "cover",
                                                borderRadius: "4px",
                                              }}
                                            />
                                            <div>
                                              <a href="#">
                                                {item.name} × {item.qty}
                                              </a>
                                              <p>
                                                Sold By:{" "}
                                                <strong>
                                                  {item.seller ||
                                                    "Default Seller"}
                                                </strong>
                                              </p>
                                            </div>
                                          </div>
                                        </td>
                                        <td>
                                          ${(item.price * item.qty).toFixed(2)}
                                        </td>
                                      </tr>
                                    ))}
                                  </tbody>
                                </table>

                                <h4 className="ps-block__title">
                                  Subtotal <span>${subtotal.toFixed(2)}</span>
                                </h4>

                                <h3>
                                  Total <span>${total.toFixed(2)}</span>
                                </h3>
                              </>
                            )}
                          </div>
                        </div>
                      </div>
                      <a className="ps-btn ps-btn--fullwidth" href="#">
                        Proceed to checkout
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}
