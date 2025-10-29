"use client";

import React from "react";
import dynamic from "next/dynamic";
import "react-multi-carousel/lib/styles.css";
import "../../components/frontend/slider.css"; 

const Carousel = dynamic(() => import("react-multi-carousel"), { ssr: false });

const responsive = {
  superLargeDesktop: {
    breakpoint: { max: 4000, min: 1280 },
    items: 1,
  },
  desktop: {
    breakpoint: { max: 1280, min: 1024 },
    items: 1,
  },
  tablet: {
    breakpoint: { max: 1024, min: 640 },
    items: 1,
  },
  mobile: {
    breakpoint: { max: 640, min: 0 },
    items: 1,
  },
};

const sliderImages = [
  "/frontend_theme/img/slider/home-3/home-banner/1.jpg",
  "/frontend_theme/img/slider/home-3/home-banner/3.jpg",
  "/frontend_theme/img/slider/home-3/home-banner/1.jpg",
];

export default function FullWidthSlider() {
  return (
    <div className="w-full">
      <Carousel
        responsive={responsive}
        infinite
        autoPlay
        autoPlaySpeed={3000}
        showDots
        arrows
        swipeable
      >
        {sliderImages.map((img, index) => (
          <div key={index} className="w-full">
            <img
              src={img}
              alt={`Slide ${index + 1}`}
              className="w-full h-slider-image object-cover"
            />
          </div>
        ))}
      </Carousel>
    </div>
  );
}
