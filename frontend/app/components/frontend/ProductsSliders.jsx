"use client";
import React from "react";
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";

const responsive = {
  superLargeDesktop: { breakpoint: { max: 4000, min: 1280 }, items: 5 },
  desktop: { breakpoint: { max: 1280, min: 1024 }, items: 4 },
  tablet: { breakpoint: { max: 1024, min: 640 }, items: 3 },
  mobile: { breakpoint: { max: 640, min: 0 }, items: 2 },
};

// Example product data array
const products = [
  {
    id: 1,
    title: "Korea Long Sofa Fabric In Blue Navy Color",
    vendor: "Young Shop",
    price: 567.99,
    oldPrice: 670,
    discount: "-16%",
    sold: 22,
    rating: 4,
    stock: true,
    img: "/frontend_theme/img/products/home/1.jpg",
  },
  {
    id: 2,
    title: "Aroma Rice Cooker",
    vendor: "Global Office",
    price: 101.99,
    discount: null,
    sold: 0,
    rating: 5,
    stock: false,
    img: "/frontend_theme/img/products/home/2.jpg",
  },
  {
    id: 3,
    title: "Simple Plastic Chair In White Color",
    vendor: "Young Shop",
    price: 42,
    oldPrice: 60,
    discount: "-25%",
    sold: 50,
    rating: 4,
    stock: true,
    img: "/frontend_theme/img/products/home/3.jpg",
  },
  {
    id: 4,
    title: "Simple Plastic Chair In White Color",
    vendor: "Young Shop",
    price: 42,
    oldPrice: 60,
    discount: "-25%",
    sold: 50,
    rating: 4,
    stock: true,
    img: "/frontend_theme/img/products/home/4.jpg",
  },
  {
    id: 5,
    title: "Simple Plastic Chair In White Color",
    vendor: "Young Shop",
    price: 42,
    oldPrice: 60,
    discount: "-25%",
    sold: 50,
    rating: 4,
    stock: true,
    img: "/frontend_theme/img/products/home/5.jpg",
  },
  {
    id: 6,
    title: "Simple Plastic Chair In White Color",
    vendor: "Young Shop",
    price: 42,
    oldPrice: 60,
    discount: "-25%",
    sold: 50,
    rating: 4,
    stock: true,
    img: "/frontend_theme/img/products/home/6.jpg",
  },
  {
    id: 7,
    title: "Simple Plastic Chair In White Color",
    vendor: "Young Shop",
    price: 42,
    oldPrice: 60,
    discount: "-25%",
    sold: 50,
    rating: 4,
    stock: true,
    img: "/frontend_theme/img/products/home/7.jpg",
  },
  // Add more products here...
];

export default function ProductsSliders() {
  return (
    <div className="ps-deal-of-day">
      <div className="container">
        <div className="ps-section__content">
          <Carousel
            responsive={responsive}
            infinite
            autoPlay
            autoPlaySpeed={5000}
            arrows
            showDots
            swipeable
            containerClass="ps-carousel--nav owl-slider"
          >
            {products.map((product) => (
              <div key={product.id} className="ps-product ps-product--inner">
                <div className="ps-product__thumbnail">
                  <a href="#">
                    <img
                      loading="lazy"
                      src={product.img}
                      alt={product.title}
                      className="w-full h-[300px] object-cover"
                    />
                  </a>
                  
                  <ul className="ps-product__actions">
                    <li>
                      <a href="#" title="Read More">
                        <i className="icon-bag2" />
                      </a>
                    </li>
                    <li>
                      <a
                        href="#"
                        title="Quick View"
                        data-bs-toggle="modal"
                        data-bs-target="#product-quickview"
                      >
                        <i className="icon-eye" />
                      </a>
                    </li>
                    <li>
                      <a href="#" title="Add to Wishlist">
                        <i className="icon-heart" />
                      </a>
                    </li>
                    <li>
                      <a href="#" title="Compare">
                        <i className="icon-chart-bars" />
                      </a>
                    </li>
                  </ul>
                </div>
                <div className="ps-product__container">
                  <a className="ps-product__vendor" href="#">
                    {product.vendor}
                  </a>
                  <div className="ps-product__content">
                    <a className="ps-product__title" href="#">
                      {product.title}
                    </a>
                   
                    <p className="ps-product__price sale">
                      ${product.price.toFixed(2)}{" "}
                      {product.oldPrice && <del>${product.oldPrice}</del>}
                    </p>
                 
                  </div>
                </div>
              </div>
            ))}
          </Carousel>
        </div>
      </div>
    </div>
  );
}
