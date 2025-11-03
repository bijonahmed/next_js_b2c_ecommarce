"use client";
import React, { useState } from "react";
import Link from "next/link";
import useCategories from "../../hooks/useCategories";

export default function SidebarSystem() {
  const [activePanel, setActivePanel] = useState(null);
  const { categoryData, loading } = useCategories();
  //const [categoriesItems, setCategoriesItems] = useState([]);
  const [openParentId, setOpenParentId] = useState(null);

  const toggleParent = (id) => {
    setOpenParentId(openParentId === id ? null : id);
  };

  const menuItems = [
    { name: "Home", link: "/" },
    { name: "Shop", link: "/shop" },
    { name: "About Bir Group", link: "/about-us" },
    { name: "Faq", link: "/faq" },
    { name: "Contact", link: "#" },
  ];

  const [openMenuIds, setOpenMenuIds] = useState([]);

  const toggleMenu = (id) => {
    setOpenMenuIds((prev) =>
      prev.includes(id) ? prev.filter((itemId) => itemId !== id) : [...prev, id]
    );
  };

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
              {/* <pre>{JSON.stringify(categoryData, null, 2)}</pre> */}

              <ul
                className="list-unstyled m-0 p-0"
                style={{
                  paddingLeft: "15px",
                  paddingRight: "15px",
                }}
              >
                {categoryData
                  .filter((item) => item.parent_id === 0)
                  .map((parent) => (
                    <li
                      key={parent.id}
                      className="mb-2"
                      style={{
                        padding: "8px 10px",
                        borderBottom: "1px solid #e0e0e0",
                      }}
                    >
                      <div
                        className="d-flex justify-content-between align-items-center"
                        style={{ cursor: "pointer" }}
                        onClick={() =>
                          parent.children && parent.children.length > 0
                            ? toggleMenu(parent.id)
                            : null
                        }
                      >
                        <a
                          href={`/${parent.slug}`}
                          className="text-decoration-none text-dark fw-semibold"
                        >
                          {parent.name}
                        </a>
                        {parent.children && parent.children.length > 0 && (
                          <span style={{ fontSize: "12px" }}>
                            {openMenuIds.includes(parent.id) ? "▲" : "▼"}
                          </span>
                        )}
                      </div>

                      {parent.children && parent.children.length > 0 && (
                        <ul
                          className="list-unstyled mt-2"
                          style={{
                            paddingLeft: "25px",
                            paddingRight: "25px",
                            maxHeight: openMenuIds.includes(parent.id)
                              ? "500px"
                              : "0px",
                            overflow: "hidden",
                            transition: "max-height 0.3s ease-in-out",
                          }}
                        >
                          {parent.children.map((child) => (
                            <li
                              key={child.id}
                              className="mb-1"
                              style={{
                                padding: "5px 8px",
                                borderBottom: "1px dotted #ccc",
                              }}
                            >
                              <a
                                href={`/${child.slug}`}
                                className="text-decoration-none text-secondary"
                              >
                                {child.name}
                              </a>
                            </li>
                          ))}
                        </ul>
                      )}
                    </li>
                  ))}
              </ul>
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
                    <a className="ps-btn" href="/cart">
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
