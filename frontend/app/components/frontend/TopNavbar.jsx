// app/components/ClientNavbar.js
"use client";

import Link from "next/link";
import { useState } from "react";

export default function TopNavbar() {
  return (
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
                            6/10 Steps - Industrial Grade Aluminum Ladder -
                            i7100 - 200kg
                          </a>
                        </li>
                      </ul>
                      <ul className="mega-menu__list">
                        <li>
                          <a href="shop-default.html">
                            7/12 Steps - Industrial Grade Aluminum Ladder -
                            i7100 - 200kg
                          </a>
                        </li>
                      </ul>
                      <ul className="mega-menu__list">
                        <li>
                          <a href="shop-default.html">
                            6 Steps | V1000 Series | Aluminium Ladder | 180kg |
                            Household grade
                          </a>
                        </li>
                      </ul>
                      <ul className="mega-menu__list">
                        <li>
                          <a href="shop-default.html">
                            7 Steps | V1000 Series | Aluminium Ladder | 180kg |
                            Household grade
                          </a>
                        </li>
                      </ul>
                      <ul className="mega-menu__list">
                        <li>
                          <a href="shop-default.html">
                            8 Steps | V1000 Series | Aluminium Ladder | 180kg |
                            Household grade
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
                            WD-40 Multi-Use Product (মরিচা রোধক) 412ml Smart
                            Straw
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
                  <a href="shop-default.html">Home &amp; Utility Essentials</a>
                </li>
                <li>
                  <a href="shop-default.html">
                    Cleaning &amp; Maintenance Products
                  </a>
                </li>
                <li>
                  <a href="shop-default.html">Hand Tools &amp; Hardware</a>
                </li>
                <li className="menu-item-has-children has-mega-menu">
                  <Link href="/shop">All Products</Link>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div className="navigation__right">
          <ul className="menu">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>
              <Link href="/shop">Shop</Link>
            </li>
             <li>
              <Link href="/about-us">About Bir Group</Link>
            </li>
            <li>
              <Link href="#">Faq</Link>
            </li>
            <li>
              <Link href="#">Contact</Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}
