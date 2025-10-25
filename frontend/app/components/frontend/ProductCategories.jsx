// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";

export default function ProductCategories() {
  return (
    <div className="ps-block--products-of-category">
      <div className="ps-block__categories">
        <h3>Tools</h3>
        <ul className="d-none">
          <li><a href="#">Best Seller</a></li>
         
        </ul>
        <a className="ps-block__more-link" href="#">
          View All
        </a>
      </div>
      <div className="ps-block__slider">
        <a href="#">
          <img
            loading="lazy"
            src="/frontend_theme/img/slider/home-3/clothing-1.png"
            alt="image"
          />
        </a>
      </div>
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
                <a
                  href="#"
                  data-bs-toggle="tooltip"
                  data-placement="top"
                  title="Read More"
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
            <div className="ps-product__content" data-mh="clothing">
              <a className="ps-product__title" href="#">
                Herschel Leather Duffle Bag In Brown Color
              </a>
             
              <p className="ps-product__price sale">
                $567.99 <del>$670.00 </del>
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
                <a
                  href="#"
                  data-bs-toggle="tooltip"
                  data-placement="top"
                  title="Read More"
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
            <div className="ps-product__content" data-mh="clothing">
              <a className="ps-product__title" href="#">
                Herschel Leather Duffle Bag In Brown Color
              </a>
             
              <p className="ps-product__price sale">
                $567.99 <del>$670.00 </del>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
