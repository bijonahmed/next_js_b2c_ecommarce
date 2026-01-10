"use client";

import React, { useState } from "react";
import useCategories from "../../hooks/useProductsCategories";
import "../styles/loader.css";
import Link from "next/link";

export default function ProductCategories() {
  const { categoryData, loading } = useCategories();
  const [loaded, setLoaded] = useState(false);

  // Store products per category
  const [categoryProducts, setCategoryProducts] = useState({});
  const [categoryLoading, setCategoryLoading] = useState({});

  // Fetch products for a specific category/subcategory
  const fetchProducts = async (parentId, slug) => {
    try {
      setCategoryLoading((prev) => ({ ...prev, [parentId]: true }));

      const url = `${process.env.NEXT_PUBLIC_API_BASE}/public/categoryFilter?slug=${slug}`;
      const res = await fetch(url);
      const result = await res.json();

      if (result.success && Array.isArray(result.product)) {
        setCategoryProducts((prev) => ({
          ...prev,
          [parentId]: result.product,
        }));
      } else {
        setCategoryProducts((prev) => ({
          ...prev,
          [parentId]: [],
        }));
      }
    } catch (err) {
      console.error("Error fetching products:", err);
      setCategoryProducts((prev) => ({
        ...prev,
        [parentId]: [],
      }));
    } finally {
      setCategoryLoading((prev) => ({
        ...prev,
        [parentId]: false,
      }));
    }
  };

  if (loading) return <p>Loading...</p>;

  return (
    <>
      {categoryData
        .filter((parent) => parent.products && parent.products.length > 0)
        .map((parent) => {
          const products = categoryProducts[parent.id] || parent.products;
          const isLoading = categoryLoading[parent.id];

          return (
            <div
              key={parent.id} // ✅ parent key
              className="ps-block--products-of-category mb-10 relative"
            >
              {/* Loader at top center 
        {isLoading && (
          <div className="d-flex justify-content-center my-3">
            <div className="spinner-border text-primary" role="status">
              <span className="visually-hidden">Loading...</span>
            </div>
          </div>
        )}
*/}
             {isLoading && (
  <div className="fullscreen-loader-overlay">
    <div className="spinner-border" role="status">
      <span className="visually-hidden">Loading...</span>
    </div>
    <p className="loader-text">Loading... Please wait</p>
  </div>
)}

              {/* Category header */}
              <div className="ps-block__categories">
                <h3>{parent.name}</h3>
                <ul>
                  {parent.children && parent.children.length > 0 ? (
                    (parent.id === 1
                      ? parent.children.slice(0, 20)
                      : parent.children.slice(0, 10)
                    ).map((child) => (
                      <li key={`${parent.id}-${child.id}`}>
                        <span
                          style={{ cursor: "pointer" }}
                          onClick={() => fetchProducts(parent.id, child.slug)}
                        >
                          {child.name}
                        </span>
                      </li>
                    ))
                  ) : (
                    <li
                      key={`no-subcategories-${parent.id}`}
                      className="text-gray-400"
                    >
                      No subcategories
                    </li>
                  )}
                </ul>

                <Link
                  className="ps-block__more-link"
                  href={`/product-categories/${parent.slug}`}
                >
                  View All
                </Link>
              </div>

              {/* Category Banner */}
              <div className="ps-block__slider">
                <img
                  loading="lazy"
                  src={
                    parent.banner_image
                      ? parent.banner_image
                      : "/frontend_theme/img/slider/home-3/blank_category.png"
                  }
                  alt={parent.name}
                />
              </div>

              {/* Products */}
              <div className="ps-block__product-box">
                {products.map((product) => (
                  <div
                    key={`${parent.id}-${product.id}`} // ✅ fixed key
                    className="ps-product ps-product--simple"
                  >
                    <div
                      className={`image-wrapper ps-product__thumbnail ${
                        loaded ? "loaded" : ""
                      }`}
                    >
                      <Link href={`/product-details/${product.slug}`}>
                        <img
                          loading="lazy"
                          src={
                            product.thumbnail
                              ? product.thumbnail
                              : "/frontend_theme/img/products/clothing/1.jpg"
                          }
                          onLoad={() => setLoaded(true)}
                          alt={product.name}
                        />
                      </Link>
                    </div>

                    <div className="ps-product__container">
                      <div className="ps-product__content">
                        <p className="ps-product__title">{product.name}</p>
                        <p className="ps-product__price sale">
                          Tk.{product.discount_price ?? "0"}{" "}
                          <del>Tk.{product.price ?? "0"}</del>
                        </p>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          );
        })}
    </>
  );
}
