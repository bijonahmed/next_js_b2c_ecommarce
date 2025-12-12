"use client";
import Link from "next/link";
import { useState, useEffect, useRef } from "react";
import Slider from "../../components/frontend/Slider";
import useProducts from "../../hooks/getProducts";
import "../../components/styles/darknessLoader.css";
import "../../components/styles/beforeLoading.css";
import "../../components/styles/loadmore.css";

import useCategories from "../../hooks/useProductsCategoriesAllData";

import { useCart } from "../../context/CartContext";
import Swal from "sweetalert2";

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
  const [loaded, setLoaded] = useState(false);
  const [activeTab, setActiveTab] = useState("grid"); // default view
  const { addToCart, addToWishlist, wishlist, cart } = useCart();
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [selectedSubcategory, setSelectedSubcategory] = useState(null);
  const [qty, setQty] = useState(1);
  const { categoryData } = useCategories();
  const [openMenu, setOpenMenu] = useState(null);
  const shopContainerRef = useRef(null);
  const lastScrollY = useRef(0);

  const { products, loading, hasMore, loadMore } = useProducts(
    40,
    selectedCategory,
    selectedSubcategory
  );

  // Prevent default empty links
  useEffect(() => {
    const root = shopContainerRef.current ?? document;
    const clickHandler = (e) => {
      const a = e.target.closest && e.target.closest("a");
      if (!a) return;
      const href = a.getAttribute("href");
      if (!href || href === "#") {
        e.preventDefault();
        e.stopPropagation();
      }
    };
    root.addEventListener("click", clickHandler);
    return () => root.removeEventListener("click", clickHandler);
  }, []);

  // Restore scroll after loading more products
  useEffect(() => {
    if (!loading && lastScrollY.current) {
      window.scrollTo({
        top: lastScrollY.current,
        behavior: "auto",
      });
      lastScrollY.current = 0;
    }
  }, [loading]);

  const handleSelect = (eOrCategory, maybeCategory = null) => {
    let e = null;
    let category = null;

    if (maybeCategory) {
      e = eOrCategory;
      category = maybeCategory;
    } else {
      category = eOrCategory;
    }

    if (e && e.preventDefault) {
      e.preventDefault();
      e.stopPropagation();
    }

    lastScrollY.current = window.scrollY;

    if (category.parent_id && category.parent_id !== 0) {
      setSelectedCategory(category.parent_id);
      setSelectedSubcategory(category.id);
    } else {
      setSelectedCategory(category.id);
      setSelectedSubcategory(null);
    }
  };

  const toggleMenu = (id) => {
    setOpenMenu((prev) => (prev === id ? null : id));
  };

  const handleAddToCart = (productRow) => {
    const isDuplicate = cart.some((item) => item.id === productRow.id);

    if (isDuplicate) {
      Swal.fire({
        icon: "warning",
        title: "<span style='font-size:18px;'>Already in Cart</span>",
        html: "<span style='font-size:16px;'>This product is already in your cart.</span>",
        showConfirmButton: false,
        timer: 1500,
      });
      return;
    }
    addToCart(productRow, qty, []);
    Swal.fire({
      icon: "success",
      title: "<span style='font-size:18px;'>Added to Cart</span>",
      html: `<span style='font-size:16px;'>${productRow.name} has been added to your cart.</span>`,
      showConfirmButton: false,
      timer: 1500,
    });
  };

  const handleAddToWishList = (productRow) => {
    const isDuplicate = wishlist.some((item) => item.id === productRow.id);

    if (isDuplicate) {
      Swal.fire({
        icon: "warning",
        title: "<span style='font-size:18px;'>Already in Wishlist</span>",
        html: "<span style='font-size:16px;'>This product is already in your wishlist.</span>",
        showConfirmButton: false,
        timer: 1500,
      });
      return;
    }

    addToWishlist(productRow);
    Swal.fire({
      icon: "success",
      title: "<span style='font-size:18px;'>Added to Wishlist</span>",
      html: `<span style='font-size:16px;'>${productRow.name} has been added to your wishlist.</span>`,
      showConfirmButton: false,
      timer: 1500,
    });
  };

  const handleLoadMore = (e) => {
    e.preventDefault();
    lastScrollY.current = window.scrollY;
    loadMore();
  };

  if (loading && (!products || products.length === 0)) {
    return (
      <div className="darkness-loader-overlay">
        <div className="darkness-spinner"></div>
      </div>
    );
  }

  return (
    <div ref={shopContainerRef}>
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

            <div className="ps-layout--shop mt-5">
              <div className="ps-layout__left">
                <aside className="widget widget_shop">
                  <h4 className="widget-title">Categories</h4>
                  <ul className="ps-list--categories">
                    <ul className="category-menu">
                      {categoryData
                        .filter((cat) => cat.parent_id === 0)
                        .map((cat) => (
                          <li
                            key={cat.id}
                            className={`menu-item-has-children ${
                              openMenu === cat.id ? "open" : ""
                            }`}
                          >
                            <div
                              className="menu-title"
                              onClick={(e) => {
                                e && e.stopPropagation();
                                toggleMenu(cat.id);
                              }}
                            >
                              <button
                                type="button"
                                className="category-btn"
                                onClick={(e) => handleSelect(e, cat)}
                              >
                                {cat.name}
                              </button>
                              {cat.children.length > 0 && (
                                <span className="sub-toggle">
                                  <i
                                    className={`fa-solid fa-angle-${
                                      openMenu === cat.id ? "up" : "down"
                                    }`}
                                  />
                                </span>
                              )}
                            </div>

                            {cat.children.length > 0 && (
                              <ul
                                className="sub-menu"
                                style={{
                                  display:
                                    openMenu === cat.id ? "block" : "none",
                                }}
                              >
                                {cat.children.map((child) => (
                                  <li key={child.id}>
                                    <button
                                      type="button"
                                      className="category-btn"
                                      onClick={(e) => handleSelect(e, child)}
                                    >
                                      {child.name}
                                    </button>
                                  </li>
                                ))}
                              </ul>
                            )}
                          </li>
                        ))}
                    </ul>
                  </ul>
                </aside>
              </div>

              <div className="ps-layout__right">
                <div className="ps-shopping ps-tab-root">
                  <div className="ps-shopping__header">
                    <p>All Products</p>
                    <div className="ps-shopping__actions">
                      <div className="ps-shopping__view">
                        <ul className="ps-tab-list mb-3 d-none d-md-flex">
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

                  <div className="tab-content">
                    {/* Grid View */}
                    {activeTab === "grid" && (
                      <div className="ps-shopping-product">
                        <div className="row">
                          {products.map((product) => (
                            <div
                              className="col-xl-2 col-lg-4 col-md-4 col-sm-6 col-6"
                              key={product.id}
                            >
                              <div className="ps-product">
                                <div
                                  className={`image-wrapper ps-product__thumbnail ${
                                    loaded ? "loaded" : ""
                                  }`}
                                >
                                  <Link
                                    href={`/product-details/${product.slug}`}
                                  >
                                    <img
                                      loading="lazy"
                                      src={product.thumnail_img}
                                      alt={product.name}
                                      className="img-fluid"
                                      onLoad={() => setLoaded(true)}
                                    />
                                  </Link>
                                  <ul className="ps-product__actions">
                                    <li>
                                      <button
                                        type="button"
                                        onClick={() => handleAddToCart(product)}
                                        className="btn-icon"
                                      >
                                        <i className="icon-bag2" />
                                      </button>
                                    </li>
                                    <li>
                                      <button
                                        type="button"
                                        onClick={() =>
                                          handleAddToWishList(product)
                                        }
                                        className="btn-icon"
                                      >
                                        <i className="icon-heart" />
                                      </button>
                                    </li>
                                  </ul>
                                </div>

                                <div className="ps-product__container">
                                  <Link
                                    href={`/product-details/${product.slug}`}
                                    className="ps-product__vendor"
                                  >
                                    {product.vendor}
                                  </Link>

                                  <div className="ps-product__content">
                                    <Link
                                      href={`/product-details/${product.slug}`}
                                      className="custom-link"
                                    >
                                      {product.name}
                                    </Link>
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

                          {hasMore && !loading && (
                            <div className="text-center mt-5 mb-5">
                              <button
                                onClick={handleLoadMore}
                                className="btn-load-more"
                              >
                                Load More
                              </button>
                            </div>
                          )}
                          {loading && products.length > 0 && (
                            <div className="text-center mt-3 text-muted">
                              Loading more products...
                            </div>
                          )}
                          {!hasMore && (
                            <p className="text-center mt-3 text-secondary">
                              No more products available.
                            </p>
                          )}
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
                            <div className="ps-product__thumbnail">
                              <Link href={`/product-details/${product.slug}`}>
                                <img
                                  loading="lazy"
                                  src={product.thumnail_img}
                                  alt={product.name}
                                  className="img-fluid"
                                />
                              </Link>
                            </div>

                            <div className="ps-product__container">
                              <div className="ps-product__content">
                                <Link
                                  className="ps-product__title"
                                  href={`/product-details/${product.slug}`}
                                >
                                  {product.name}
                                </Link>

                                <p className="ps-product__vendor">
                                  Sold by:{" "}
                                  <Link
                                    href={`/product-details/${product.slug}`}
                                    className="text-primary btn-as-link"
                                  >
                                    {product.vendor}
                                  </Link>
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

                                <button
                                  className="ps-btn"
                                  onClick={(e) => {
                                    e.preventDefault();
                                    handleAddToCart(product);
                                  }}
                                >
                                  Add to cart
                                </button>

                                <ul className="ps-product__actions d-none">
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

                        {hasMore && !loading && (
                          <div className="text-center mt-5 mb-5">
                            <button
                              type="button"
                              className="btn-load-more"
                              onClick={handleLoadMore}
                            >
                              Load More
                            </button>
                          </div>
                        )}

                        {loading && products.length > 0 && (
                          <div className="text-center mt-3 text-muted">
                            Loading more products...
                          </div>
                        )}

                        {!hasMore && (
                          <p className="text-center mt-3 text-secondary">
                            No more products available.
                          </p>
                        )}
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <style jsx>{`
        .btn-icon {
          background: transparent;
          border: none;
          cursor: pointer;
          padding: 0;
        }
        .btn-as-link {
          background: none;
          border: none;
          padding: 0;
          color: inherit;
          cursor: pointer;
          text-decoration: underline;
        }
        .category-btn {
          background: none;
          border: none;
          padding: 0;
          color: inherit;
          cursor: pointer;
          font: inherit;
          text-align: left;
        }
        .ps-product__content a,
        .ps-product__vendor {
          color: black;
          text-decoration: none;
        }
        .ps-product__content a:hover,
        .ps-product__vendor:hover {
          color: black !important;
          text-decoration: none;
        }
      `}</style>
    </div>
  );
}
