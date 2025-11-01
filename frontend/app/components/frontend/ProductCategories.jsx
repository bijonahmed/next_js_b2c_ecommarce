// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";
import useCategories from "../../hooks/useProductsCategories";

export default function ProductCategories() {
  const { categoryData, loading } = useCategories();
  return (
    <>
      {categoryData.map((parent) => (
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
                    <a href={`/shop/${child.slug}`}>{child.name}</a>
                  </li>
                ))
              ) : (
                <li className="text-gray-400">No subcategories</li>
              )}
            </ul>
            <a className="ps-block__more-link" href={`/shop/${parent.slug}`}>
              View All
            </a>
          </div>

          {/* Middle image */}
          <div className="ps-block__slider">
            <a href={`/shop/${parent.slug}`}>
              <img
                loading="lazy"
                src={
                  parent.banner_image
                    ? parent.banner_image
                    : "/frontend_theme/img/slider/home-3/blank_category.png"
                }
                alt={parent.name}
              />
            </a>
          </div>

          {/* Product placeholder section */}
          <div className="ps-block__product-box">
            <div className="ps-product ps-product--simple">
              <div className="ps-product__thumbnail">
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/products/clothing/1.jpg"
                    alt="image"
                  />
                </a>
                <ul className="ps-product__actions">
                  <li>
                    <a href="#" title="Read More">
                      <i className="icon-bag2" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Quick View">
                      <i className="icon-eye" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Add to Wishlist">
                      <i className="icon-heart" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Compare">
                      <i className="icon-chart-bars" />
                    </a>
                  </li>
                </ul>
              </div>

              <div className="ps-product__container">
                <div className="ps-product__content">
                  <a className="ps-product__title" href="#">
                    Demo Product
                  </a>
                  <p className="ps-product__price sale">
                    $567.99 <del>$670.00</del>
                  </p>
                </div>
              </div>
            </div>

            <div className="ps-product ps-product--simple">
              <div className="ps-product__thumbnail">
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/products/clothing/1.jpg"
                    alt="image"
                  />
                </a>
                <ul className="ps-product__actions">
                  <li>
                    <a href="#" title="Read More">
                      <i className="icon-bag2" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Quick View">
                      <i className="icon-eye" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Add to Wishlist">
                      <i className="icon-heart" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Compare">
                      <i className="icon-chart-bars" />
                    </a>
                  </li>
                </ul>
              </div>

              <div className="ps-product__container">
                <div className="ps-product__content">
                  <a className="ps-product__title" href="#">
                    Demo Product
                  </a>
                  <p className="ps-product__price sale">
                    $567.99 <del>$670.00</del>
                  </p>
                </div>
              </div>
            </div>

            <div className="ps-product ps-product--simple">
              <div className="ps-product__thumbnail">
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/products/clothing/1.jpg"
                    alt="image"
                  />
                </a>
                <ul className="ps-product__actions">
                  <li>
                    <a href="#" title="Read More">
                      <i className="icon-bag2" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Quick View">
                      <i className="icon-eye" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Add to Wishlist">
                      <i className="icon-heart" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Compare">
                      <i className="icon-chart-bars" />
                    </a>
                  </li>
                </ul>
              </div>

              <div className="ps-product__container">
                <div className="ps-product__content">
                  <a className="ps-product__title" href="#">
                    Demo Product
                  </a>
                  <p className="ps-product__price sale">
                    $567.99 <del>$670.00</del>
                  </p>
                </div>
              </div>
            </div>

            <div className="ps-product ps-product--simple">
              <div className="ps-product__thumbnail">
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/products/clothing/1.jpg"
                    alt="image"
                  />
                </a>
                <ul className="ps-product__actions">
                  <li>
                    <a href="#" title="Read More">
                      <i className="icon-bag2" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Quick View">
                      <i className="icon-eye" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Add to Wishlist">
                      <i className="icon-heart" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Compare">
                      <i className="icon-chart-bars" />
                    </a>
                  </li>
                </ul>
              </div>

              <div className="ps-product__container">
                <div className="ps-product__content">
                  <a className="ps-product__title" href="#">
                    Demo Product
                  </a>
                  <p className="ps-product__price sale">
                    $567.99 <del>$670.00</del>
                  </p>
                </div>
              </div>
            </div>

            <div className="ps-product ps-product--simple">
              <div className="ps-product__thumbnail">
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/products/clothing/1.jpg"
                    alt="image"
                  />
                </a>
                <ul className="ps-product__actions">
                  <li>
                    <a href="#" title="Read More">
                      <i className="icon-bag2" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Quick View">
                      <i className="icon-eye" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Add to Wishlist">
                      <i className="icon-heart" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Compare">
                      <i className="icon-chart-bars" />
                    </a>
                  </li>
                </ul>
              </div>

              <div className="ps-product__container">
                <div className="ps-product__content">
                  <a className="ps-product__title" href="#">
                    Demo Product
                  </a>
                  <p className="ps-product__price sale">
                    $567.99 <del>$670.00</del>
                  </p>
                </div>
              </div>
            </div>

            <div className="ps-product ps-product--simple">
              <div className="ps-product__thumbnail">
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/products/clothing/1.jpg"
                    alt="image"
                  />
                </a>
                <ul className="ps-product__actions">
                  <li>
                    <a href="#" title="Read More">
                      <i className="icon-bag2" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Quick View">
                      <i className="icon-eye" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Add to Wishlist">
                      <i className="icon-heart" />
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Compare">
                      <i className="icon-chart-bars" />
                    </a>
                  </li>
                </ul>
              </div>

              <div className="ps-product__container">
                <div className="ps-product__content">
                  <a className="ps-product__title" href="#">
                    Demo Product
                  </a>
                  <p className="ps-product__price sale">
                    $567.99 <del>$670.00</del>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      ))}
    </>
  );
}
