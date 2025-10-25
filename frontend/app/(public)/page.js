"use client";

import Image from "next/image";
import { useState, useEffect } from "react";
import Slider from "../components/frontend/Slider";
import NewsLetter from "../components/frontend/NewsLetter";
import PromotionProducts from "../components/frontend/PromotionProducts";
import ProductsSliders from "../components/frontend/ProductsSliders";
import ProductCategories from "../components/frontend/ProductCategories";
//import "./loader.css"; // 👈 we'll create this file next

export default function Home() {
  return (
    <>
      <div id="homepage-3" className="bg-white">
        <div className="ps-home-banner">
          <Slider />
        </div>

        <div className="ps-site-features d-none d-sm-block">
          <div className="container">
            <div className="ps-block--site-features ps-block--site-features-2">
              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-rocket" />
                </div>
                <div className="ps-block__right">
                  <h4>Fast Shipping</h4>
                  <p>Fast delivery</p>
                </div>
              </div>
              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-sync" />
                </div>
                <div className="ps-block__right">
                  <h4>30-Day Returns</h4>
                  <p>Easy returns</p>
                </div>
              </div>
              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-credit-card" />
                </div>
                <div className="ps-block__right">
                  <h4>Safe Payment</h4>
                  <p>Secure payment</p>
                </div>
              </div>
              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-bubbles" />
                </div>
                <div className="ps-block__right">
                  <h4>Customer Support</h4>
                  <p>We’re here 24/7 to help you</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* PromotionProducts */}
        <PromotionProducts />

        {/* ProductsSliders */}
        <ProductsSliders />
        {/* ProductsCategorys */}
        <div className="ps-section--gray">
          <div className="container">
            <ProductCategories />
          </div>
        </div>
        {/* NewsLetter */}
        <NewsLetter />
      </div>
    </>
  );
}
