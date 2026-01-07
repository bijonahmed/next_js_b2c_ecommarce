// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";
import React, { useState } from "react";
import useCategories from "../../hooks/useProductsCategories";
import "../styles/beforeLoading.css";
import useProducts from "../../hooks/getProductsBySubCategories";

export default function ProductCategories() {
  const [loaded, setLoaded] = useState(false);
  const { categoryData, loading } = useCategories();

  if (loading) return <p>Loading...</p>;

  const { productse } = useProducts(
    40,
    selectedCategory,
    selectedSubcategory,
    slug
  );

  return (
    <>
      {categoryData
        .filter((parent) => parent.products && parent.products.length > 0) // ✅ Only show categories with products
        .map((parent) => (
          <div key={parent.id} className="ps-block--products-of-category mb-10">
            {/* Category block container */}
            <div className="ps-block__categories">
              <h3>{parent.name}</h3>
              <ul>
                {parent.children && parent.children.length > 0 ? (
                  (parent.id === 1
                    ? parent.children.slice(0, 20)
                    : parent.children.slice(0, 10)
                  ).map((child) => (
                    <li key={child.id}>
                      <Link href={`/shop-categories/${child.slug}`}>
                        {child.name}
                      </Link>
                    </li>
                  ))
                ) : (
                  <li className="text-gray-400">No subcategories</li>
                )}
              </ul>
              <Link
                className="ps-block__more-link"
                href={`/product-categories/${parent.slug}`}
              >
                View All
              </Link>
            </div>

            {/* Middle image */}
            <div className="ps-block__slider">
              <Link href={`/product-categories/${parent.slug}`}>
                <img
                  loading="lazy"
                  src={
                    parent.banner_image
                      ? parent.banner_image
                      : "/frontend_theme/img/slider/home-3/blank_category.png"
                  }
                  alt={parent.name}
                />
              </Link>
            </div>

            {/* Product loop section */}
            <div className="ps-block__product-box">
              {parent.products.map((product) => (
                <div key={product.id} className="ps-product ps-product--simple">
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
                      <Link
                        className="ps-product__title"
                        href={`/product-details/${product.slug}`}
                      >
                        {product.name}
                      </Link>
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
        ))}
    </>
  );
}
