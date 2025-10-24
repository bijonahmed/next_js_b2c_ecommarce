// app/components/ClientNavbar.js
"use client";

import Link from "next/link";
import { useState } from "react";
import { useRouter } from "next/navigation";
import { useAuth } from "../../context/AuthContext";

export default function ClientNavbar() {
  const { isLoggedIn, logout, username } = useAuth();
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [activeSubmenu, setActiveSubmenu] = useState(null);

  return (
    <div>
      <div>
        <div
          className="ps-block--promotion-header bg--cover"
          data-background="/frontend_theme/img/promotions/header-promotion.jpg"
        >
          <div className="container">
            <div className="ps-block__left">
              <h3>Our Products</h3>
              <figure>
                <h4>Tools</h4>
                <p>High quality and reliable</p>
              </figure>
            </div>
            <div className="ps-block__center">
              <p className="d-none">Check out our latest tools collection</p>
            </div>
            <a className="ps-btn ps-btn--sm" href="/">
              Buy Now
            </a>
          </div>
        </div>
        <header
          className="header header--standard header--market-place-1"
          data-sticky="true"
        >
          <div className="header__top">
            <div className="container">
              <div className="header__left">
                <p>Welcome to Bir Group Holdings !</p>
              </div>
              <div className="header__right">
                <ul className="header__top-links">
                  
                  <li>
                    <a href="#">Track Your Order</a>
                  </li>
                  <li>
                    <div>
                      <a href="#">BDT</a>
                    </div>
                  </li>
                  <li>
                    <div className="language">
                      <a href="#">
                        <img
                          loading="lazy"
                          src="/frontend_theme/img/flag/en.png"
                          alt="image"
                        />
                        English
                      </a>
                      
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div className="header__content">
            <div className="container">
              <div className="header__content-left">
                <div className="menu--product-categories"></div>
                <a className="ps-logo" href="index.html">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/logo.png"
                    alt="image"
                  />
                </a>
              </div>
              <div className="header__content-center">
                <form
                  className="ps-form--quick-search"
                  action="https://nouthemes.net/html/martfury/index.html"
                  method="get"
                >
                  <div className="form-group--icon">
                    <i className="icon-chevron-down" />
                    <select className="form-control" defaultValue="all">
                      <option value="all">All</option>
                      <option value="tools">Tools</option>
                      <option value="hardware">Hardware</option>
                      <option value="kpms">KPMS</option>
                      <option value="bmi">BMI</option>
                      <option value="bcel">BCEL</option>
                    </select>
                  </div>
                  <input
                    className="form-control"
                    type="text"
                    placeholder="I'm shopping for..."
                  />
                  <button>Search</button>
                </form>
              </div>
              <div className="header__content-right">
                <div className="header__actions">
                  <a className="header__extra" href="#">
                    <i className="icon-heart" />
                    <span>
                      <i>0</i>
                    </span>
                  </a>
                  <div className="ps-cart--mini">
                    <a className="header__extra" href="#">
                      <i className="icon-bag2" />
                      <span>
                        <i>0</i>
                      </span>
                    </a>
                    <div className="ps-cart__content">
                      <div className="ps-cart__items">
                        <div className="ps-product--cart-mobile">
                          <div className="ps-product__thumbnail">
                            <a href="#">
                              <img
                                loading="lazy"
                                src="/frontend_theme/img/products/clothing/7.jpg"
                                alt="image"
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
                        <div className="ps-product--cart-mobile">
                          <div className="ps-product__thumbnail">
                            <a href="#">
                              <img
                                loading="lazy"
                                src="/frontend_theme/img/products/clothing/5.jpg"
                                alt="image"
                              />
                            </a>
                          </div>
                          <div className="ps-product__content">
                            <a className="ps-product__remove" href="#">
                              <i className="icon-cross" />
                            </a>
                            <a href="product-default.html">
                              Sleeve Linen Blend Caro Pane Shirt
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
                  <div className="ps-block--user-header">
                    <div className="ps-block__left">
                      <i className="icon-user" />
                    </div>
                    <div className="ps-block__right">
                      <a href="my-account.html">Login</a>
                      <a href="my-account.html">Register</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <nav className="navigation">
            <div className="container">
              <div className="navigation__left">
                <div className="menu--product-categories">
                  <div className="menu__toggle">
                    <span>Shop by Categories</span>
                  </div>
                  <div className="menu__content">
                    <ul className="menu--dropdown">
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">
                          Foldable Clothes Drying Racks{" "}
                          <i className="fa-solid fa-chevrons-right" />
                          <i className="fa-solid fa-circle-chevron-right" />
                        </a>
                        <div className="mega-menu">
                          <div className="mega-menu__column">
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Foldable Clothes Drying Racks - 100% SS &amp;
                                  Aluminium Bar
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">
                          Vikars Ladder
                          <i className="fa-solid fa-chevrons-right" />
                          <i className="fa-solid fa-circle-chevron-right" />
                        </a>
                        <div className="mega-menu">
                          <div className="mega-menu__column">
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Vikars Anti-Slip Aluminum Folding Ladder –
                                  Industrial Grade Strength
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  6/10 Steps - Industrial Grade Aluminum Ladder
                                  - i7100 - 200kg
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  7/12 Steps - Industrial Grade Aluminum Ladder
                                  - i7100 - 200kg
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  6 Steps | V1000 Series | Aluminium Ladder |
                                  180kg | Household grade
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  7 Steps | V1000 Series | Aluminium Ladder |
                                  180kg | Household grade
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  8 Steps | V1000 Series | Aluminium Ladder |
                                  180kg | Household grade
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">
                          WD-40 Anti Rust Spray
                          <i className="fa-solid fa-chevrons-right" />
                          <i className="fa-solid fa-circle-chevron-right" />
                        </a>
                        <div className="mega-menu">
                          <div className="mega-menu__column">
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  WD-40 Multi-Use Product (মরিচা রোধক) 412ml
                                  Smart Straw
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  WD-40 Multi-Use Product(মরিচা রোধক) 191ml
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  WD-40 Multi-Use Product(মরিচা রোধক) 277ml
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  WD-40 Multi-Use Product (মরিচা রোধক) 382ml
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  WD-40 Specialist Contact Cleaner(ইলেক্টনিক্স
                                  ক্লিনার) 360ml
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  WD-40 Specialist Chain Lube 360ml
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">
                          Bir Tools
                          <i className="fa-solid fa-chevrons-right" />
                          <i className="fa-solid fa-circle-chevron-right" />
                        </a>
                        <div className="mega-menu">
                          <div className="mega-menu__column">
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Bir Hand Tools Kit | 38 Pcs
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">
                          Makita Power Tools
                          <i className="fa-solid fa-chevrons-right" />
                          <i className="fa-solid fa-circle-chevron-right" />
                        </a>
                        <div className="mega-menu">
                          <div className="mega-menu__column">
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Makita Drill 350W M0600B 10mm
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Makita Planer 580W M1902B
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Makita Die Grinder 400W GD0601
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Makita Heat Gun 1600W HG5030K
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Makita Angle Grinder M9002B 125 mm (5″)
                                </a>
                              </li>
                            </ul>
                            <ul className="mega-menu__list">
                              <li>
                                <a href="shop-default.html">
                                  Makita Cut-Off Saw 2000W M2401B 14"
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>
                      <li>
                        <a href="shop-default.html">
                          Home &amp; Utility Essentials
                        </a>
                      </li>
                      <li>
                        <a href="shop-default.html">
                          Cleaning &amp; Maintenance Products
                        </a>
                      </li>
                      <li>
                        <a href="shop-default.html">
                          Hand Tools &amp; Hardware
                        </a>
                      </li>
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">All Products</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div className="navigation__right">
                <ul className="menu">
                  <li>
                    <a href="index-2.html">Home</a>
                  </li>
                  <li className="menu-item-has-children has-mega-menu">
                    <a href="shop-default-2.html">Shop</a>
                    <span className="sub-toggle" />
                    <div className="mega-menu">
                      <div className="mega-menu__column">
                        <h4>
                          Catalog Pages
                          <span className="sub-toggle" />
                        </h4>
                        <ul className="mega-menu__list">
                          <li>
                            <a href="shop-default.html">Shop Default</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Shop Fullwidth</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Shop Categories</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Shop Sidebar</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Shop Without Banner</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Shop Carousel</a>
                          </li>
                        </ul>
                      </div>
                      <div className="mega-menu__column">
                        <h4>
                          Product Layout
                          <span className="sub-toggle" />
                        </h4>
                        <ul className="mega-menu__list">
                          <li>
                            <a href="shop-default.html">Default</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Extended</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Full Content</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Boxed</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Sidebar</a>
                          </li>
                          <li>
                            <a href="shop-default.html">Fullwidth</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </header>
        <header className="header header--mobile" data-sticky="true">
          <div className="header__top">
            <div className="header__left">
              <p>Welcome to Martfury Online Shopping Store !</p>
            </div>
            <div className="header__right">
              <ul className="navigation__extra">
                <li>
                  <a href="#">Sell on Martfury</a>
                </li>
                <li>
                  <a href="#">Tract your order</a>
                </li>
                <li>
                  <div className="ps-dropdown">
                    <a href="#">US Dollar</a>
                    <ul className="ps-dropdown-menu">
                      <li>
                        <a href="#">Us Dollar</a>
                      </li>
                      <li>
                        <a href="#">Euro</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <div className="ps-dropdown language">
                    <a href="#">
                      <img
                        loading="lazy"
                        src="/frontend_theme/img/flag/en.png"
                        alt="image"
                      />
                      English
                    </a>
                    <ul className="ps-dropdown-menu">
                      <li>
                        <a href="#">
                          <img
                            loading="lazy"
                            src="/frontend_theme/img/flag/germany.png"
                            alt="image"
                          />{" "}
                          Germany
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <img
                            loading="lazy"
                            src="/frontend_theme/img/flag/fr.png"
                            alt="image"
                          />{" "}
                          France
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div className="navigation--mobile">
            <div className="navigation__left">
              <a className="ps-logo" href="index.html">
                <img
                  loading="lazy"
                  src="/frontend_theme/img/logo.png"
                  alt="image"
                />
              </a>
            </div>
            <div className="navigation__right">
              <div className="header__actions">
                <div className="ps-cart--mini">
                  <a className="header__extra" href="#">
                    <i className="icon-bag2" />
                    <span>
                      <i>0</i>
                    </span>
                  </a>
                  <div className="ps-cart__content">
                    <div className="ps-cart__items">
                      <div className="ps-product--cart-mobile">
                        <div className="ps-product__thumbnail">
                          <a href="#">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/clothing/7.jpg"
                              alt="image"
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
                      <div className="ps-product--cart-mobile">
                        <div className="ps-product__thumbnail">
                          <a href="#">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/clothing/5.jpg"
                              alt="image"
                            />
                          </a>
                        </div>
                        <div className="ps-product__content">
                          <a className="ps-product__remove" href="#">
                            <i className="icon-cross" />
                          </a>
                          <a href="product-default.html">
                            Sleeve Linen Blend Caro Pane Shirt
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
                <div className="ps-block--user-header">
                  <div className="ps-block__left">
                    <a href="my-account.html">
                      <i className="icon-user" />
                    </a>
                  </div>
                  <div className="ps-block__right">
                    <a href="my-account.html">Login</a>
                    <a href="my-account.html">Register</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="ps-search--mobile">
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
        </header>
      </div>
    </div>
  );
}
