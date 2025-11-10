// app/components/ClientNavbar.js
"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import { useRouter, usePathname } from "next/navigation";
import Swal from "sweetalert2";

import { useAuth } from "../../context/AuthContext";
import { useCart } from "../../context/CartContext";
import useCategories from "../../hooks/useCategories";

import TopNavbar from "./TopNavbar";
import InsideHeader from "../frontend/InsideHeader";

export default function ClientNavbar() {
  // ✅ Hooks at top level — never inside conditions
  const router = useRouter();
  const pathname = usePathname();
  const { cart, updateQty, removeFromCart } = useCart();
  const { topBannerData } = useCategories();
  //const { user } = useAuth?.() || {}; // optional chaining if AuthContext is optional

  const [token, setToken] = useState(null);
  const [isMounted, setIsMounted] = useState(false);

  // ✅ Hydration-safe mount check
  useEffect(() => {
    setIsMounted(true);
    const savedToken = localStorage.getItem("token");
    if (savedToken) setToken(savedToken);
  }, []);

  if (!isMounted) return null; // prevent hydration mismatch

  // ✅ Logout handler
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

        setTimeout(() => router.push("/my-account"), 1500);
      }
    });
  };

  return (
    <div>
      {pathname === "/" ? (
        <>
          {/* ---------- Top Banner Section ---------- */}
          <div
            className="ps-block--promotion-header bg--cover"
            style={{
              backgroundImage: `url(${topBannerData})`,
              backgroundSize: "cover",
              backgroundPosition: "center",
              width: "100%",
            }}
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

          {/* ---------- Desktop Header ---------- */}
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
                            alt="English"
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
                  <Link className="ps-logo" href="/">
                    <img
                      loading="lazy"
                      src="/frontend_theme/img/logo.png"
                      alt="Logo"
                    />
                  </Link>
                </div>

                {/* ---------- Search Bar ---------- */}
                <div className="header__content-center">
                  <form
                    className="ps-form--quick-search"
                    action="#"
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

                {/* ---------- Header Right ---------- */}
                <div className="header__content-right">
                  <div className="header__actions">
                    <Link className="header__extra" href="/wishlist">
                      <i className="icon-heart" />
                      <span>
                        <i>0</i>
                      </span>
                    </Link>

                    {/* ---------- Cart Dropdown ---------- */}
                    <div className="ps-cart--mini">
                      <Link className="header__extra" href="/cart">
                        <i className="icon-bag2" />
                        <span>
                          <i>{cart?.length || 0}</i>
                        </span>
                      </Link>
                      <div className="ps-cart__content">
                        <div className="ps-cart__items">
                          {cart.length > 0 ? (
                            cart.map((item) => {
                              const key = `${item.id}-${JSON.stringify(
                                item.selectedAttr
                              )}`;
                              return (
                                <div
                                  className="ps-product--cart-mobile"
                                  key={key}
                                >
                                  <div className="ps-product__thumbnail">
                                    <a href="#">
                                      <img
                                        loading="lazy"
                                        src={item.thumnail_img || ""}
                                        alt={item.name || "Product image"}
                                        className="img-fluid"
                                      />
                                    </a>
                                  </div>
                                  <div className="ps-product__content">
                                    <a
                                      className="ps-product__remove"
                                      href="#"
                                      onClick={(e) => {
                                        e.preventDefault();
                                        removeFromCart(item);
                                      }}
                                    >
                                      <i className="icon-cross" />
                                    </a>
                                    <a href="#">{item.name}</a>
                                    <small>
                                      &nbsp;{item.qty} × Tk.{item.price}
                                    </small>
                                  </div>
                                </div>
                              );
                            })
                          ) : (
                            <p className="text-center py-3">
                              Your cart is empty
                            </p>
                          )}
                        </div>

                        <div className="ps-cart__footer">
                          <h3>
                            Sub Total:
                            <strong>
                              Tk.
                              {cart
                                .reduce(
                                  (acc, item) => acc + item.price * item.qty,
                                  0
                                )
                                .toFixed(2)}
                            </strong>
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

                    {/* ---------- User Menu ---------- */}
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

            {pathname === "/" && <TopNavbar />}
          </header>
        </>
      ) : (
        <InsideHeader />
      )}

      {/* ---------- Mobile Header ---------- */}
      <header className="header header--mobile" data-sticky="true">
        <div className="header__top">
          <div className="header__left">
            <p>Welcome to Bir Group Holdings !</p>
          </div>
          <div className="header__right">
            <ul className="navigation__extra">
              <li>
                <a href="#">Track your order</a>
              </li>
              <li>
                <a href="#">BDT Dollar</a>
              </li>
              <li>
                <a href="#">
                  <img
                    loading="lazy"
                    src="/frontend_theme/img/flag/en.png"
                    alt="English"
                  />
                  English
                </a>
              </li>
            </ul>
          </div>
        </div>

        <div className="navigation--mobile">
          <div className="navigation__left">
            <Link className="ps-logo" href="/">
              <img
                loading="lazy"
                src="/frontend_theme/img/logo.png"
                alt="Logo"
              />
            </Link>
          </div>
          <div className="navigation__right">
            <div className="header__actions">
              <div className="ps-cart--mini">
                <Link className="header__extra" href="/cart">
                  <i className="icon-bag2" />
                  <span>
                    <i>{cart?.length || 0}</i>
                  </span>
                </Link>
              </div>

              <div className="ps-block--user-header">
                <div className="ps-block__left">
                  <Link href="/my-account/">
                    <i className="icon-user" />
                  </Link>
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

        <div className="ps-search--mobile">
          <form className="ps-form--search-mobile" action="#" method="get">
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
  );
}
