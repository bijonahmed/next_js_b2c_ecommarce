"use client";

import { useState } from "react";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

export default function ProductSlider({ images }) {
  const [mainSlider, setMainSlider] = useState(null);
  const [thumbSlider, setThumbSlider] = useState(null);

  const mainSettings = {
    asNavFor: thumbSlider,
    ref: (slider) => setMainSlider(slider),
    arrows: true,
    dots: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 3000,
    pauseOnHover: true,
  };

  const thumbSettings = {
    asNavFor: mainSlider,
    ref: (slider) => setThumbSlider(slider),
    slidesToShow: 3,
    slidesToScroll: 1,
    vertical: true,
    verticalSwiping: true,
    focusOnSelect: true,
    arrows: false,
    infinite: true,
    centerMode: false,
  };

  return (
    <div
      className="product-slider-wrapper"
      style={{
        display: "flex",
        gap: "10px",
        alignItems: "flex-start",
      }}
    >
      {/* Left Thumbnail Slider */}
      <div
        className="thumb-slider"
        style={{
          width: "60px",
          flexShrink: 0,
          overflow: "hidden", // hide unwanted scrollbars on desktop
        }}
      >
        <Slider {...thumbSettings}>
          {images.map((img, index) => (
            <div key={index} style={{ padding: "5px 0" }}>
              <img
                src={img}
                alt={`Thumb ${index + 1}`}
                style={{
                  width: "100%",
                  height: "60px",
                  objectFit: "cover",
                  cursor: "pointer",
                  border: "1px solid #ccc",
                }}
              />
            </div>
          ))}
        </Slider>
      </div>

      {/* Main Slider */}
      <div
        className="main-slider"
        style={{
          width: "500px",
          maxWidth: "100%",
          height: "500px",
          flexShrink: 0,
        }}
      >
        <Slider {...mainSettings}>
          {images.map((img, index) => (
            <div key={index}>
              <img
                src={img}
                alt={`Product ${index + 1}`}
                style={{
                  width: "100%",
                  height: "100%",
                  objectFit: "cover",
                }}
              />
            </div>
          ))}
        </Slider>
      </div>

      <style jsx>{`
        /* Desktop: hide scrollbars in thumbnails */
        .thumb-slider .slick-list {
          overflow: hidden !important;
        }

        /* Mobile: hide left vertical thumbnail slider */
        @media (max-width: 480px) {
          .product-slider-wrapper {
            flex-direction: column;
           
          }

          .thumb-slider {
            display: none !important;
          }

          .main-slider {
            width: 100% !important;
            height: auto;
          }

        }
      `}</style>
    </div>
  );
}
