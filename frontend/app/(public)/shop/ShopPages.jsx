"use client";
import Link from "next/link";
import React, { useState } from "react";
import Slider from "../../../components/frontend/Slider";

import getsAllproducts from "../../../hooks/getAllProducts";
import "../../../components/frontend/DarknessLoader.css";

const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";
export const metadata = {
  title: "shop - Bir E-Commerce",
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
    title: "shop - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/shop`,
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
    canonical: `${baseUrl}/shop`,
  },
};

export default function AboutPage() {
  const { products, loading } = getsAllproducts();

  const [activeTab, setActiveTab] = useState("grid"); // default view

  if (loading || !products) {
    return (
      <div className="darkness-loader-overlay">
        <div className="darkness-spinner"></div>
      </div>
    );
  }
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
                          {products.map((product) => (
                            <div
                              className="col-xl-2 col-lg-4 col-md-4 col-sm-6 col-6"
                              key={product.id}
                            >
                              <div className="ps-product">
                                {/* Product Thumbnail */}
                                <div className="ps-product__thumbnail">
                                  <Link
                                    href={`/product-details/${product.slug}`}
                                  >
                                    <img
                                      loading="lazy"
                                      src={product.thumnail_img}
                                      alt={product.name}
                                      className="img-fluid"
                                    />
                                  </Link>

                                  {/* Product Actions */}
                                  <ul className="ps-product__actions">
                                    <li>
                                      <Link
                                        href={`/product-details/${product.slug}`}
                                        data-bs-toggle="tooltip"
                                        data-placement="top"
                                        title="Add To Cart"
                                      >
                                        <i className="icon-bag2" />
                                      </Link>
                                    </li>
                                    <li>
                                      <Link
                                        href="/whishlist"
                                        data-bs-toggle="tooltip"
                                        data-placement="top"
                                        title="Add to Wishlist"
                                      >
                                        <i className="icon-heart" />
                                      </Link>
                                    </li>
                                  </ul>
                                </div>

                                {/* Product Info */}
                                <div className="ps-product__container">
                                  <a className="ps-product__vendor" href="#">
                                    {product.vendor}
                                  </a>
                                  <div className="ps-product__content">
                                    <a
                                      className="ps-product__title"
                                      href={`/product-details/${product.slug}`}
                                    >
                                      {product.name}
                                    </a>
                                    <p className="ps-product__price">
                                      {product.discount_price ? (
                                        <>
                                          <span className="text-danger fw-bold">
                                            {product.currency}{" "}
                                            {product.discount_price}
                                          </span>{" "}
                                          <del className="text-muted">
                                            {product.currency} {product.price}
                                          </del>
                                        </>
                                      ) : (
                                        <>
                                          {product.currency} {product.price}
                                        </>
                                      )}
                                    </p>
                                  </div>

                                  <div className="ps-product__content hover">
                                    <a
                                      className="ps-product__title"
                                      href={`/product-details/${product.slug}`}
                                    >
                                      {product.name}
                                    </a>
                                    <p className="ps-product__price">
                                      {product.discount_price ? (
                                        <>
                                          <span className="text-danger fw-bold">
                                            {product.currency}{" "}
                                            {product.discount_price}
                                          </span>{" "}
                                          <del className="text-muted">
                                            {product.currency} {product.price}
                                          </del>
                                        </>
                                      ) : (
                                        <>
                                          {product.currency} {product.price}
                                        </>
                                      )}
                                    </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          ))}

                          {/* Add more grid products here */}
                        </div>
                      </div>
                    )}

                    {/* List View */}
                    {activeTab === "list" && (
                      <div className="ps-shopping-product">
                        {products.map((product) => (
                          <div
                            className="ps-product ps-product--wide"
                            key={product.id}
                          >
                            {/* Thumbnail */}
                            <div className="ps-product__thumbnail">
                              <Link href={`/shop/details/${product.slug}`}>
                                <img
                                  loading="lazy"
                                  src={product.thumnail_img}
                                  alt={product.name}
                                  className="img-fluid"
                                />
                              </Link>
                            </div>

                            {/* Content */}
                            <div className="ps-product__container">
                              <div className="ps-product__content">
                                <Link
                                  className="ps-product__title"
                                  href={`/shop/details/${product.slug}`}
                                >
                                  {product.name}
                                </Link>

                                <p className="ps-product__vendor">
                                  Sold by:{" "}
                                  <a href="#" className="text-primary">
                                    {product.vendor}
                                  </a>
                                </p>

                                <div
                                  className="ps-product__desc text-justify"
                                  style={{
                                    textAlign: "justify",
                                    maxWidth: "800px",
                                    overflow: "hidden",
                                    textOverflow: "ellipsis",
                                  }}
                                  dangerouslySetInnerHTML={{
                                    __html: product.description_full,
                                  }}
                                />
                              </div>

                              {/* Shopping Actions */}
                              <div className="ps-product__shopping">
                                <p className="ps-product__price">
                                  {product.discount_price ? (
                                    <>
                                      <span className="text-danger fw-bold">
                                        {product.currency}{" "}
                                        {product.discount_price}
                                      </span>{" "}
                                      <del className="text-muted">
                                        {product.currency} {product.price}
                                      </del>
                                    </>
                                  ) : (
                                    <>
                                      {product.currency} {product.price}
                                    </>
                                  )}
                                </p>

                                <Link
                                  className="ps-btn"
                                  href={`/shop/details/${product.slug}`}
                                >
                                  Add to cart
                                </Link>

                                <ul className="ps-product__actions">
                                  <li>
                                    <Link href="/whishlist">
                                      <i className="icon-heart" /> Wishlist
                                    </Link>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                        ))}
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
