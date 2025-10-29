// app/components/ClientNavbar.js
"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAuth } from "../../context/AuthContext";
import TopNavbar from "./TopNavbar";
import { usePathname } from "next/navigation";
import { useEffect, useState } from "react";
import Swal from "sweetalert2";

export default function InsideHeader() {
  const [token, setToken] = useState(null);
  const router = useRouter();
  const [menuOpen, setMenuOpen] = useState(false);
  const [selectedCategory, setSelectedCategory] = useState("0");

useEffect(() => {
    const storedToken = localStorage.getItem("token");
    if (storedToken) {
      setToken(storedToken);
    }
  }, []); 

   const handleLogout = () => {
    Swal.fire({
      title: "Are you sure?",
      text: "You will be logged out.",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Yes, Logout",
    }).then((result) => {
      if (result.isConfirmed) {
        localStorage.removeItem("token");
        localStorage.removeItem("user");
        setToken(null);

        Swal.fire({
          title: "Logged out!",
          text: "You have been logged out successfully.",
          icon: "success",
          timer: 1500,
          showConfirmButton: false,
        });

        // ✅ redirect to login page after short delay
        setTimeout(() => {
          router.push("/my-account");
        }, 1500);
      }
    });
  };

  // Toggle menu on button click
  const toggleMenu = () => {
    setMenuOpen((prev) => !prev);
  };

  return (
    <div>
      {/* Header */}
      <header className="header header--1 sticky-top" data-sticky="true">
        <div className="header__top">
          <div className="ps-container">
            <div className="header__left">
              <Link className="ps-logo" href="/">
                <img
                  loading="lazy"
                  src="/frontend_theme/img/logo.png"
                  className="w-100"
                  alt="Logo"
                />
              </Link>
            </div>
            <div className="header__center">
              <form className="ps-form--quick-search" action="#" method="get">
                <div className="form-group--icon">
                  <i className="icon-chevron-down" />
                  <select
                    className="form-control"
                    value={selectedCategory}
                    onChange={(e) => setSelectedCategory(e.target.value)}
                  >
                    <option value="0">All</option>
                    <option className="level-0" value="babies-moms">
                      Babies &amp; Moms
                    </option>
                  </select>
                </div>
                <input
                  className="form-control"
                  type="text"
                  placeholder="I'm shopping for..."
                  id="input-search"
                />
                <button>Search</button>
              </form>
            </div>
            <div className="header__right">
              <div className="header__actions">
                <Link className="header__extra" href="/whishlist">
                  <i className="icon-heart" />
                  <span>
                    <i>0</i>
                  </span>
                </Link>
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
                              alt="Img"
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
                        <Link className="ps-btn" href="/cart">
                          View Cart
                        </Link>
                        <Link className="ps-btn" href="/checkout">
                          Checkout
                        </Link>
                      </figure>
                    </div>
                  </div>
                </div>
                <div className="ps-block--user-header">

                  <div className="ps-block__left">
                    <i className="icon-user" />
                    
                  </div>
                  <div className="ps-block__right">
                    {token ? (
                      <>
                        <Link href="/customer-dashboard">My Dashboard</Link>
                        <Link href="#" onClick={handleLogout}>
                          Logout
                        </Link>
                      </>
                    ) : (
                      <>
                        <Link href="/my-account">Login</Link>
                        <Link href="/register">Register</Link>
                      </>
                    )}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <nav className="navigation">
          <div className="ps-container">
            <div className="navigation__left">
              {/* Start */}
              <div className="menu--product-categories">
                <div
                  className="menu__toggle d-flex align-items-center gap-2"
                  onClick={toggleMenu}
                >
                  <i className="icon-menu" />
                  <span>Shop by Department</span>
                </div>
                {/* Dropdown Content */}
                {menuOpen && (
                  <div
                    className="menu__content bg-white shadow mt-2 p-3 position-absolute z-50"
                    style={{ top: "100%", left: 0 }}
                  >
                    <ul className="menu--dropdown list-unstyled mb-0">
                      <li>
                        <a href="#.html">Hot Promotions</a>
                      </li>
                      <li className="menu-item-has-children has-mega-menu">
                        <a href="#">Consumer Electronic</a>
                        <span className="sub-toggle" />
                        <div className="mega-menu mt-2 ps-3">
                          <div className="mega-menu__column mb-3">
                            <h4>
                              Electronic <span className="sub-toggle" />
                            </h4>
                            <ul className="mega-menu__list list-unstyled">
                              <li>
                                <a href="#.html">Home Audio & Theathers</a>
                              </li>
                            </ul>
                          </div>
                          <div className="mega-menu__column">
                            <h4>
                              Accessories & Parts{" "}
                              <span className="sub-toggle" />
                            </h4>
                            <ul className="mega-menu__list list-unstyled">
                              <li>
                                <a href="#.html">Digital Cables</a>
                              </li>
                              <li>
                                <a href="#.html">Audio & Video Cables</a>
                              </li>
                              <li>
                                <a href="#.html">Batteries</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </li>

                      <li>
                        <a href="#.html">Babies & Moms</a>
                      </li>
                    </ul>
                  </div>
                )}
              </div>
              {/* END */}
            </div>
            <div className="navigation__right">
              <ul className="menu">
                <li>
                  <Link href="/">Home</Link>
                  <span className="sub-toggle" />
                </li>
                <li>
                  <Link href="/shop">Shop</Link>
                  <span className="sub-toggle" />
                </li>
                <li>
                  <Link href="/about-us">About Bir Group</Link>
                  <span className="sub-toggle" />
                </li>
                <li>
                  <Link href="/faq">Faq</Link>
                  <span className="sub-toggle" />
                </li>
                <li>
                  <Link href="/contact">Contact</Link>
                  <span className="sub-toggle" />
                </li>
              </ul>
              <ul className="navigation__extra">
                <li>
                  <a href="#">Tract your order</a>
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
                        alt="English"
                      />
                      English
                    </a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </header>

      {/* Header */}
    </div>
  );
}
