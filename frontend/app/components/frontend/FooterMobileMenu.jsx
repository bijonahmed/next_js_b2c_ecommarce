"use client";
import React, { useState } from "react";
import Link from "next/link";
export default function SidebarSystem() {
  const [activePanel, setActivePanel] = useState(null);

  //const [categoriesItems, setCategoriesItems] = useState([]);
  const categoriesItems = [
    { name: "Foldable Clothes Drying Racks", link: "#" },
    { name: "Vikars Ladder", link: "#" },
    { name: "WD-40 Anti Rust Spray", link: "#" },
    { name: "Bir Tools", link: "#" },
    { name: "Makita Power Tools", link: "#" },
    { name: "Home & Utility Essentials", link: "#" },
    { name: "Cleaning & Maintenance Products", link: "#" },
    { name: "Hand Tools & Hardware", link: "#" },
  ];

  const menuItems = [
    { name: "Home", link: "/" },
    { name: "Shop", link: "/shop" },
    { name: "About Bir Group", link: "/about-us" },
    { name: "Faq", link: "/faq" },
    { name: "Contact", link: "#" },
  ];

  return (
    <div>
      <div>
        <div className="navigation--list">
          <div className="navigation__content">
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#menu-mobile"
            >
              <i className="icon-menu" />
              <span> Menu</span>
            </a>
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#navigation-mobile"
            >
              <i className="icon-list4" />
              <span> Categories</span>
            </a>
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#search-sidebar"
            >
              <i className="icon-magnifier" />
              <span>Search</span>
            </a>
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#cart-mobile"
            >
              <i className="icon-bag2" />
              <span> Cart</span>
            </a>
          </div>
        </div>

        {/* Cart Categories */}
        <div className="ps-panel--sidebar" id="navigation-mobile">
          <div className="ps-panel__header">
            <h3>Categories</h3>
          </div>
          <div className="ps-panel__content">
            <div className="menu--product-categories">
              <div className="menu__toggle">
                <i className="icon-menu" />
                <span> Shop by Categories</span>
              </div>
              <div className="menu__content">
                <ul className="menu--mobile">
                  {categoriesItems.map((item, index) => (
                    <li key={index}>
                      <a href={item.link}>{item.name}</a>
                    </li>
                  ))}
                </ul>
              </div>
            </div>
          </div>
        </div>
        {/* Categories end*/}

        {/* Start menu*/}
        {/* Sidebar Panel */}
        <div className="ps-panel--sidebar" id="menu-mobile">
          <div className="ps-panel__header">
            <h3>Menu</h3>
          </div>

          <div className="ps-panel__content">
            <ul className="menu--mobile">
              {menuItems.map((item, index) => (
                <li className="menu-item-has-children" key={index}>
                  <a href={item.link}>{item.name}</a>
                </li>
              ))}
            </ul>
          </div>
        </div>
        {/* End menu*/}

        {/* Cart start */}
        <div>
          <div className="ps-site-overlay" />
          <div className="ps-panel--sidebar" id="cart-mobile">
            <div className="ps-panel__header">
              <h3>Shopping Cart</h3>
            </div>
            <div className="navigation__content">
              <div className="ps-cart--mobile">
                <div className="ps-cart__content">
                  <div className="ps-product--cart-mobile">
                    <div className="ps-product__thumbnail">
                      <a href="#">
                        <img
                          loading="lazy"
                          src="/frontend_theme/img/products/clothing/7.jpg"
                          alt="test"
                        />
                      </a>
                    </div>
                    <div className="ps-product__content">
                      <a className="ps-product__remove" href="#">
                        <i className="icon-cross" />
                      </a>
                      <a href="product-default.html">
                        MVMTH Classical Leather Watch In Black
                      </a>
                      <p>
                        <strong>Sold by:</strong> YOUNG SHOP
                      </p>
                      <small>1 x $59.99</small>
                    </div>
                  </div>
                </div>
                <div className="ps-cart__footer">
                  <h3>
                    Sub Total:<strong>$59.99</strong>
                  </h3>
                  <figure>
                    <a className="ps-btn" href="shopping-cart.html">
                      View Cart
                    </a>
                    <a className="ps-btn" href="checkout.html">
                      Checkout
                    </a>
                  </figure>
                </div>
              </div>
            </div>
          </div>
        </div>
        {/* Cart end */}

        {/* Start Search*/}
        <div className="ps-panel--sidebar" id="search-sidebar">
          <div className="ps-panel__header">
            <form
              className="ps-form--search-mobile"
              action="https://nouthemes.net/html/martfury/index.html"
              method="get"
            >
              <div className="form-group--nest">
                <input
                  className="form-control"
                  type="text"
                  placeholder="Search something..."
                />
                <button>
                  <i className="icon-magnifier" />
                </button>
              </div>
            </form>
          </div>
          <div className="navigation__content" />
        </div>
        {/* End Search*/}
      </div>
    </div>
  );
}
