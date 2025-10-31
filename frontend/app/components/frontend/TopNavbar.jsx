// app/components/ClientNavbar.js
"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import useCategories from "../../hooks/useCategories";

export default function TopNavbar() {
  const { categoryData, loading } = useCategories();
  

  return (
    <nav className="navigation">
      <div className="container">
        <div className="navigation__left">
          <div className="menu--product-categories">
            <div className="menu__toggle">
              <i className="icon-menu"></i><span>Shop by Categories</span>
            </div>
            <div className="menu__content">
              <ul className="menu--dropdown">
                {categoryData.map((parent) => (
                  <li
                    key={parent.id}
                    className={`menu-item-has-children has-mega-menu ${
                      parent.children && parent.children.length > 0
                        ? "has-sub"
                        : ""
                    }`}
                  >
                    <a href="#">
                      {parent.name}{" "}
                      {parent.children && parent.children.length > 0 && (
                        <>
                          <i className="fa-solid fa-chevrons-right" />
                          <i
                            className="fa-solid fa-circle-chevron-right"
                            style={{ marginLeft: "5px" }}
                          />
                        </>
                      )}
                    </a>

                    {/* Mega Menu */}
                    {parent.children && parent.children.length > 0 && (
                      <div
                        className="mega-menu"
                        style={{
                          display: "flex",
                          flexWrap: "wrap",
                          backgroundColor: "#f9f9f9",
                          padding: "10px",
                          borderRadius: "6px",
                          boxShadow: "0 4px 6px rgba(0,0,0,0.1)",
                          maxWidth: "500px", // adjust as needed
                        }}
                      >
                        {parent.children && parent.children.length > 0 && (
                          <ul
                            className="mega-menu__list"
                            style={{
                              display: "flex",
                              flexWrap: "wrap",
                              padding: 0,
                              margin: 0,
                              listStyle: "none",
                              width: "100%",
                            }}
                          >
                            {parent.children.map((subItem, index) => (
                              <li
                                key={subItem.id}
                                style={{
                                  width: "50%", // two columns
                                  padding: "5px 10px",
                                  boxSizing: "border-box",
                                }}
                              >
                                <Link
                                  href={`/shop/${subItem.slug}`}
                                  style={{
                                    textDecoration: "none",
                                    color: "#333",
                                    display: "block",
                                    padding: "5px",
                                    borderRadius: "4px",
                                    backgroundColor: "#fff",
                                    marginBottom: "3px",
                                  }}
                                >
                                  {subItem.name}
                                </Link>
                              </li>
                            ))}
                          </ul>
                        )}
                      </div>
                    )}
                  </li>
                ))}
                <li>
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
              <Link href="/faq">Faq</Link>
            </li>
            <li>
              <Link href="/contact">Contact</Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}
