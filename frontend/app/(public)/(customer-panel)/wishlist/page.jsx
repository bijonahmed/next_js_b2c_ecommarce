"use client"; // required for client components
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAuth } from "../../../context/AuthContext"; // Adjust the path as necessary
import Sidebar from "../customer-dashboard/sidebar";
import { useState } from "react";

export default function LoginPage() {
  const router = useRouter(); // ✅ Next.js Router
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");
  const { login } = useAuth();

  return (
    <main className="ps-page--my-account">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>
              <Link href="/customer-dashboard">Account</Link>
            </li>
            <li>Wishlist</li>
          </ul>
        </div>
      </div>
      <section className="ps-section--account">
        <div className="container">
          <div className="row">
            <div className="col-lg-4">
              <div className="ps-section__left">
                <aside className="ps-widget--account-dashboard">
                  <Sidebar />
                </aside>
              </div>
            </div>
            <div className="col-lg-8">
              <div className="ps-section--shopping ps-whishlist">
                <div className="">
                  <div className="ps-section__content">
                    <div className="table-responsive">
                      <table className="table ps-table--whishlist ps-table--responsive">
                        <thead>
                          <tr>
                            <th />
                            <th>Product name</th>
                            <th>Unit Price</th>
                            <th />
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td data-label="Remove">
                              <a href="#">
                                <i className="icon-cross" />
                              </a>
                            </td>
                            <td data-label="Product">
                              <div className="ps-product--cart">
                                <div className="ps-product__thumbnail">
                                  <a href="product-default.html">
                                    <img
                                      loading="lazy"
                                      src="/frontend_theme/img/products/shop/1.jpg"
                                      alt="image"
                                    />
                                  </a>
                                </div>
                                <div className="ps-product__content">
                                  <a href="product-default.html">
                                    Apple iPhone Retina 6s Plus 64GB
                                  </a>
                                  <p>
                                    Sold By:<strong> YOUNG SHOP</strong>
                                  </p>
                                </div>
                              </div>
                            </td>
                            <td className="price" data-label="Price">
                              $205.00
                            </td>

                            <td data-label="action">
                              <a className="ps-btn" href="#">
                                Add to cart
                              </a>
                            </td>
                          </tr>
                          <tr>
                            <td data-label="Remove">
                              <a href="#">
                                <i className="icon-cross" />
                              </a>
                            </td>
                            <td data-label="Product">
                              <div className="ps-product--cart">
                                <div className="ps-product__thumbnail">
                                  <a href="product-default.html">
                                    <img
                                      loading="lazy"
                                      src="/frontend_theme/img/products/shop/1.jpg"
                                      alt="image"
                                    />
                                  </a>
                                </div>
                                <div className="ps-product__content">
                                  <a href="product-default.html">
                                    Apple iPhone Retina 6s Plus 64GB
                                  </a>
                                  <p>
                                    Sold By:<strong> YOUNG SHOP</strong>
                                  </p>
                                </div>
                              </div>
                            </td>
                            <td className="price" data-label="Price">
                              $205.00
                            </td>

                            <td data-label="action">
                              <a className="ps-btn" href="#">
                                Add to cart
                              </a>
                            </td>
                          </tr>
                          <tr>
                            <td data-label="Remove">
                              <a href="#">
                                <i className="icon-cross" />
                              </a>
                            </td>
                            <td data-label="Product">
                              <div className="ps-product--cart">
                                <div className="ps-product__thumbnail">
                                  <a href="product-default.html">
                                    <img
                                      loading="lazy"
                                      src="/frontend_theme/img/products/shop/2.jpg"
                                      alt="image"
                                    />
                                  </a>
                                </div>
                                <div className="ps-product__content">
                                  <a href="product-default.html">
                                    Marshall Kilburn Portable Wireless Speaker
                                  </a>
                                  <p>
                                    Sold By:<strong> YOUNG SHOP</strong>
                                  </p>
                                </div>
                              </div>
                            </td>
                            <td className="price" data-label="Price">
                              $205.00
                            </td>

                            <td data-label="action">
                              <a className="ps-btn" href="#">
                                Add to cart
                              </a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
