"use client";
import { useRouter } from "next/navigation";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

export default function RelatedProducts({ products = [] }) {
  // Separate arrow styles
  const router = useRouter();
  const handleVendorClick = (slug) => {
    alert(`Navigating to ${slug}`);
    ////router.push(`/shop/details/${slug}`);
  };

  const arrowStyle = {
    position: "absolute",
    top: "50%",
    transform: "translateY(-50%)",
    zIndex: 10,
    fontSize: "24px",
    color: "#333",
    cursor: "pointer",
    background: "#fff",
    borderRadius: "50%",
    width: "40px",
    height: "40px",
    gap: "2px",
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    boxShadow: "0 2px 6px rgba(0,0,0,0.2)",
  };

  function NextArrow({ onClick }) {
    return (
      <div style={{ ...arrowStyle, right: "-50px" }} onClick={onClick}>
        <i className="icon-chevron-right"></i>
      </div>
    );
  }

  function PrevArrow({ onClick }) {
    return (
      <div style={{ ...arrowStyle, left: "-50px" }} onClick={onClick}>
        <i className="icon-chevron-left"></i>
      </div>
    );
  }

  const settings = {
    slidesToShow: 6,
    slidesToScroll: 1,
    infinite: true,
    arrows: true,
    nextArrow: <NextArrow />,
    prevArrow: <PrevArrow />,
    dots: false,
    responsive: [
      { breakpoint: 1200, settings: { slidesToShow: 4 } },
      { breakpoint: 992, settings: { slidesToShow: 3 } },
      { breakpoint: 576, settings: { slidesToShow: 2 } },
    ],
  };

  return (
    <div style={{ position: "relative", padding: "20px 60px" }}>
      <h3 style={{ marginBottom: "15px" }}>Related Products</h3>
      {products.length > 0 && (
        <Slider {...settings}>
          {products.map((product, index) => (
            <div
              key={index}
              style={{
                maxWidth: "300px",
                padding: "0 10px",
                boxSizing: "border-box",
                margin: "0 auto",
              }}
            >
              <div style={{ position: "relative" }}>
                <a
                  href="#"
                  onClick={(e) => {
                    e.preventDefault(); // prevent default anchor behavior
                    handleVendorClick(product.slug); // product.slug = "iphone-15"
                  }}
                >
                  <img
                    src={product.image}
                    alt={product.title}
                    style={{
                    padding: "5px",
                      width: "100%",
                      height: "300px",
                      objectFit: "cover",
                      borderRadius: "5px",
                    }}
                  />
                </a>
              </div>
              <div>
                <a
                  href="#"
                  onClick={(e) => {
                    e.preventDefault(); // prevent default anchor behavior
                    handleVendorClick("iphone-15"); // product.slug = "iphone-15"
                  }}
                  style={{
                    display: "block",
                    fontSize: "12px",
                    color: "#999",
                    margin: "5px 0",
                  }}
                >
                  {product.vendor}
                </a>
                <div>
                  <a
                    href="#"
                    onClick={(e) => {
                      e.preventDefault(); // prevent default anchor behavior
                      handleVendorClick("iphone-15"); // product.slug = "iphone-15"
                    }}
                    style={{
                      display: "block",
                      fontWeight: "600",
                      marginBottom: "5px",
                    }}
                  >
                    {product.title}
                  </a>
                  <p style={{ fontWeight: "bold", margin: 0 }}>
                    {product.price}{" "}
                    {product.oldPrice && (
                      <del style={{ marginLeft: "5px", color: "#999" }}>
                        {product.oldPrice}
                      </del>
                    )}
                  </p>
                </div>
              </div>
            </div>
          ))}
        </Slider>
      )}
    </div>
  );
}
