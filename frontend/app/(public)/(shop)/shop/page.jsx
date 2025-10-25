"use client";
import Link from "next/link";
import React, { useState } from "react";
import Slider from "../../../components/frontend/Slider";
import PromotionProducts from "../../../components/frontend/PromotionProducts";
export default function AboutPage() {
  const [activeTab, setActiveTab] = useState("grid"); // default view
  return (
    <div>




      {/* Start */}
      <div className="bg-white">
        <div className="ps-breadcrumb">
          <div className="ps-container">
            <ul className="breadcrumb">
              <li>
                <Link href="/">Home</Link>
              </li>
              <li>Shop</li>
            </ul>
          </div>
        </div>
        <div className="ps-page--shop">
          <div className="ps-container mt-5">
            <Slider />

            {/* <PromotionProducts /> */}

            <div className="ps-layout--shop mt-5  ">
              <div className="ps-layout__left">
                <aside className="widget widget_shop">
                  <h4 className="widget-title">Categories</h4>
                  <ul className="ps-list--categories">
                    <li>
                      <a href="#">Foldable Clothes Drying Racks</a>
                    </li>
                    <li>
                      <a href="#">Vikars Ladder</a>
                    </li>
                    <li>
                      <a href="#">WD-40 Anti Rust Spray</a>
                    </li>

                    <li>
                      <a href="#">Bir Tools</a>
                    </li>
                    <li>
                      <a href="#">Makita Power Tools</a>
                    </li>
                    <li>
                      <a href="#">Home & Utility Essentials</a>
                    </li>
                    <li>
                      <a href="#">Cleaning & Maintenance Products</a>
                    </li>
                    <li>
                      <a href="#">Hand Tools & Hardware</a>
                    </li>
                  </ul>
                </aside>
              </div>

              <div className="ps-layout__right">
                <div className="ps-shopping ps-tab-root">
                  <div className="ps-shopping__header">
                    <p>All Products</p>
                    <div className="ps-shopping__actions">
                      <div className="ps-shopping__view">
                        <p>View</p>
                        <ul className="ps-tab-list mb-3">
                          <li className={activeTab === "grid" ? "active" : ""}>
                            <a
                              href="#tab-1"
                              onClick={(e) => {
                                e.preventDefault();
                                setActiveTab("grid");
                              }}
                            >
                              <i className="icon-grid" />
                            </a>
                          </li>
                          <li className={activeTab === "list" ? "active" : ""}>
                            <a
                              href="#tab-2"
                              onClick={(e) => {
                                e.preventDefault();
                                setActiveTab("list");
                              }}
                            >
                              <i className="icon-list4" />
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  {/* Start tabs */}
                  <div className="tab-content">
                    {/* Grid View */}
                    {activeTab === "grid" && (
                      <div className="ps-shopping-product">
                        <div className="row">
                          {/* Example product */}

                          <div className="col-xl-2 col-lg-4 col-md-4 col-sm-6 col-6 ">
                            <div className="ps-product">
                              <div className="ps-product__thumbnail">
                                <a href="#">
                                  <img
                                    loading="lazy"
                                    src="/frontend_theme/img/products/home/1.jpg"
                                    alt="image"
                                  />
                                </a>
                                <ul className="ps-product__actions">
                                  <li>
                                    <a
                                      href="#"
                                      data-bs-toggle="tooltip"
                                      data-placement="top"
                                      title="Add To Cart"
                                    >
                                      <i className="icon-bag2" />
                                    </a>
                                  </li>
                                  <li>
                                    <a
                                      href="#"
                                      data-placement="top"
                                      title="Quick View"
                                      data-bs-toggle="modal"
                                      data-bs-target="#product-quickview"
                                    >
                                      <i className="icon-eye" />
                                    </a>
                                  </li>
                                  <li>
                                    <a
                                      href="#"
                                      data-bs-toggle="tooltip"
                                      data-placement="top"
                                      title="Add to Whishlist"
                                    >
                                      <i className="icon-heart" />
                                    </a>
                                  </li>
                                  <li>
                                    <a
                                      href="#"
                                      data-bs-toggle="tooltip"
                                      data-placement="top"
                                      title="Compare"
                                    >
                                      <i className="icon-chart-bars" />
                                    </a>
                                  </li>
                                </ul>
                              </div>
                              <div className="ps-product__container">
                                <a className="ps-product__vendor" href="#">
                                  ROBERT’S STORE
                                </a>
                                <div className="ps-product__content">
                                  <a className="ps-product__title" href="#">
                                    Apple iPhone Retina 6s Plus 64GB
                                  </a>
                                  <p className="ps-product__price">$1310.00</p>
                                </div>
                                <div className="ps-product__content hover">
                                  <a className="ps-product__title" href="#">
                                    Apple iPhone Retina 6s Plus 64GB
                                  </a>
                                  <p className="ps-product__price">$1310.00</p>
                                </div>
                              </div>
                            </div>
                          </div>

                          {/* Add more grid products here */}
                        </div>
                      </div>
                    )}

                    {/* List View */}
                    {activeTab === "list" && (
                      <div className="ps-shopping-product">
                        <div className="ps-product ps-product--wide">
                          <div className="ps-product__thumbnail">
                            <a href="#">
                              <img
                                loading="lazy"
                                src="/frontend_theme/img/products/shop/1.jpg"
                                alt="imge"
                              />
                            </a>
                          </div>
                          <div className="ps-product__container">
                            <div className="ps-product__content">
                              <a className="ps-product__title" href="#">
                                Apple iPhone Retina 6s Plus 64GB
                              </a>
                              <p className="ps-product__vendor">
                                Sold by: <a href="#">ROBERT’S STORE</a>
                              </p>
                              <ul className="ps-product__desc">
                                <li>
                                  Unrestrained and portable active stereo
                                  speaker
                                </li>
                                <li>
                                  Free from the confines of wires and chords
                                </li>
                                <li>20 hours of portable capabilities</li>
                                <li>
                                  Double-ended Coil Cord with 3.5mm Stereo Plugs
                                  Included
                                </li>
                                <li>
                                  3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X
                                </li>
                              </ul>
                            </div>
                            <div className="ps-product__shopping">
                              <p className="ps-product__price">$1310.00</p>
                              <a className="ps-btn" href="#">
                                Add to cart
                              </a>
                              <ul className="ps-product__actions">
                                <li>
                                  <a href="#">
                                    <i className="icon-heart" /> Wishlist
                                  </a>
                                </li>
                                <li>
                                  <a href="#">
                                    <i className="icon-chart-bars" /> Compare
                                  </a>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        {/* Add more list products here */}
                      </div>
                    )}
                  </div>
                  {/* End Tabs  */}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* END */}
    </div>
  );
}
