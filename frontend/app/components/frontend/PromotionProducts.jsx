// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";

export default function PromotionProducts() {
  const images = Array.from({ length: 12 }, (_, i) => ({
    src: `/frontend_theme/img/products/home/gif/${i + 1}.gif`,
    link: "shop-default.html",
    alt: `image ${i + 1}`,
  }));

  return (
    <div className="ps-promotions mt-3">
      <div className="container">
        {/* Start */}
        <div className="ps-section__content">
          <div className="row">
            {images.map((image, index) => (
              <div
                key={index}
                className="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
              >
                <div
                  className="ps-block--category"
                  style={{
                    height: "205px", // Desktop height
                    maxHeight: "250px", // Prevent too large on desktop
                    width: "100%",
                    borderRadius: "5px",
                    overflow: "hidden", // Crop overflow
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                  }}
                >
                  <Link href="/shop/details/iphone-15/">
                    <img
                      loading="lazy"
                      className="ps-product__thumbnail"
                      src={image.src}
                      alt={image.alt}
                      style={{
                        width: "100%",
                        height: "100%",
                        objectFit: "cover",
                      }}
                    />
                  </Link>
                </div>
              </div>
            ))}
          </div>
        </div>
        {/* END */}
      </div>
    </div>
  );
}
