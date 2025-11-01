"use client";

import React from "react";
import dynamic from "next/dynamic";
import "react-multi-carousel/lib/styles.css";
import "../../components/frontend/slider.css";
import useCategories from "../../hooks/useCategories";

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

export default function FullWidthSlider() {
  const { sliderData, loading } = useCategories();
  return (
    <>
      {loading ? (
        // ✅ Show Bootstrap spinner when loading
        <div
          className="d-flex justify-content-center align-items-center"
          style={{ height: "200px" }}
        >
          <div className="spinner-border text-primary" role="status">
            <span className="visually-hidden">Loading...</span>
          </div>
        </div>
      ) : sliderData?.length > 0 ? (
        // ✅ Show slider if data exists
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
            {sliderData.map((img, index) => (
              <div key={index} className="w-full">
                <img
                  src={img.home_slider} // ✅ dot notation
                  alt={`Slide ${index + 1}`}
                  className="w-full h-slider-image object-cover"
                />
              </div>
            ))}
          </Carousel>
        </div>
      ) : (
        // ✅ Fallback if no data
        <p>No slider images found</p>
      )}
    </>
  );
}
