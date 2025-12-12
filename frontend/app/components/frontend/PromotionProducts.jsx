// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";
import useCategoriesParent from "../../hooks/useCategoriesParent";

export default function PromotionProducts() {
  const { categoryParentData, loading } = useCategoriesParent();

  return (
    <div className="ps-promotions mt-3">
      <div className="container">
        {/* Start */}
        
        <div className="ps-section__content">
          <div className="ps-section__column">
            <div className="row">
              {categoryParentData.map((category, index) => (
                <div
                  key={index}
                  className="ps-block__overlay col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6"
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
                    <Link href={`/product-categories/${category.slug}`}>
                      <img
                        loading="lazy"
                        className="ps-product__thumbnail"
                        src={category.thumbnail_image}
                        alt={category.name}
                        style={{
                          width: "100%",
                          height: "100%",
                          objectFit: "cover",
                        }}
                      />
                    </Link>
                  </div>
                  <center>
                    <p>
                      <Link href={`/product-categories/${category.slug}`}>
                        {category.name}
                      </Link>
                    </p>
                  </center>
                </div>
              ))}
            </div>
          </div>
        </div>
        {/* END */}
      </div>
    </div>
  );
}
