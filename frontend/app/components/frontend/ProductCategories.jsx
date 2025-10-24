// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";

export default function ProductCategories() {
  return (
    <div className="ps-block--products-of-category">
      <div className="ps-block__categories">
        <h3>Tools</h3>
        <ul>
          <li>
            <a href="#">Best Seller</a>
          </li>
          <li>
            <a href="#">New Arrivals</a>
          </li>
          <li>
            <a href="#">Women</a>
          </li>
          <li>
            <a href="#">Men</a>
          </li>
          <li>
            <a href="#">Girls</a>
          </li>
          <li>
            <a href="#">Boys</a>
          </li>
          <li>
            <a href="#">Baby</a>
          </li>
          <li>
            <a href="#">Sales &amp; Deals</a>
          </li>
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
            <a href="product-default.html">
              <img
                loading="lazy"
                src="/frontend_theme/img/products/clothing/1.jpg"
                alt="image"
              />
            </a>
            <div className="ps-product__badge">-16%</div>
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
              <a className="ps-product__title" href="product-default.html">
                Herschel Leather Duffle Bag In Brown Color
              </a>
              <div className="ps-product__rating">
                <select className="ps-rating" data-read-only="true">
                  <option value={1}>1</option>
                  <option value={1}>2</option>
                  <option value={1}>3</option>
                  <option value={1}>4</option>
                  <option value={2}>5</option>
                </select>
                <span>01</span>
              </div>
              <p className="ps-product__price sale">
                $567.99 <del>$670.00 </del>
              </p>
            </div>
          </div>
        </div>
        <div className="ps-product ps-product--simple">
          <div className="ps-product__thumbnail">
            <a href="product-default.html">
              <img
                loading="lazy"
                src="/frontend_theme/img/products/clothing/2.jpg"
                alt="image"
              />
            </a>
            <div className="ps-product__badge out-stock">Out Of Stock</div>
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
              <a className="ps-product__title" href="product-default.html">
                Unero Military Classical Backpack
              </a>
              <div className="ps-product__rating">
                <select className="ps-rating" data-read-only="true">
                  <option value={1}>1</option>
                  <option value={1}>2</option>
                  <option value={1}>3</option>
                  <option value={1}>4</option>
                  <option value={2}>5</option>
                </select>
                <span>01</span>
              </div>
              <p className="ps-product__price">$101.99</p>
            </div>
          </div>
        </div>
        <div className="ps-product ps-product--simple">
          <div className="ps-product__thumbnail">
            <a href="product-default.html">
              <img
                loading="lazy"
                src="/frontend_theme/img/products/clothing/3.jpg"
                alt="image"
              />
            </a>
            <div className="ps-product__badge">-25%</div>
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
              <a className="ps-product__title" href="product-default.html">
                Rayban Rounded Sunglass Brown Color
              </a>
              <div className="ps-product__rating">
                <select className="ps-rating" data-read-only="true">
                  <option value={1}>1</option>
                  <option value={1}>2</option>
                  <option value={1}>3</option>
                  <option value={1}>4</option>
                  <option value={2}>5</option>
                </select>
                <span>02</span>
              </div>
              <p className="ps-product__price sale">
                $42.00 <del>$60.00 </del>
              </p>
            </div>
          </div>
        </div>
        <div className="ps-product ps-product--simple">
          <div className="ps-product__thumbnail">
            <a href="product-default.html">
              <img
                loading="lazy"
                src="/frontend_theme/img/products/clothing/4.jpg"
                alt="image"
              />
            </a>
            <div className="ps-product__badge out-stock">Out Of Stock</div>
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
              <a className="ps-product__title" href="product-default.html">
                Sleeve Linen Blend Caro Pane Shirt
              </a>
              <div className="ps-product__rating">
                <select className="ps-rating" data-read-only="true">
                  <option value={1}>1</option>
                  <option value={1}>2</option>
                  <option value={1}>3</option>
                  <option value={1}>4</option>
                  <option value={2}>5</option>
                </select>
                <span>01</span>
              </div>
              <p className="ps-product__price">$320.00</p>
            </div>
          </div>
        </div>
        <div className="ps-product ps-product--simple">
          <div className="ps-product__thumbnail">
            <a href="product-default.html">
              <img
                loading="lazy"
                src="/frontend_theme/img/products/clothing/5.jpg"
                alt="image"
              />
            </a>
            <div className="ps-product__badge out-stock">Out Of Stock</div>
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
              <a className="ps-product__title" href="product-default.html">
                Men’s Sports Runnning Swim Board Shorts
              </a>
              <div className="ps-product__rating">
                <select className="ps-rating" data-read-only="true">
                  <option value={1}>1</option>
                  <option value={1}>2</option>
                  <option value={1}>3</option>
                  <option value={1}>4</option>
                  <option value={2}>5</option>
                </select>
                <span>01</span>
              </div>
              <p className="ps-product__price">$85.00</p>
            </div>
          </div>
        </div>
        <div className="ps-product ps-product--simple">
          <div className="ps-product__thumbnail">
            <a href="product-default.html">
              <img
                loading="lazy"
                src="/frontend_theme/img/products/clothing/6.jpg"
                alt="image"
              />
            </a>
            <div className="ps-product__badge out-stock">Out Of Stock</div>
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
              <a className="ps-product__title" href="product-default.html">
                Paul’s Smith Sneaker InWhite Color
              </a>
              <div className="ps-product__rating">
                <select className="ps-rating" data-read-only="true">
                  <option value={1}>1</option>
                  <option value={1}>2</option>
                  <option value={1}>3</option>
                  <option value={1}>4</option>
                  <option value={2}>5</option>
                </select>
                <span>01</span>
              </div>
              <p className="ps-product__price">$92.00</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
