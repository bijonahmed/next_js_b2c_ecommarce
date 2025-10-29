import Link from "next/link";
const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";

export const metadata = {
  title: "Whishlist - Bir E-Commerce",
  description: "Securely complete your order and payment on Bir E-Commerce.",
  keywords: [
    "checkout",
    "payment",
    "online shopping",
    "bir e-commerce",
    "order summary",
    "secure checkout",
  ],
  openGraph: {
    title: "Whishlist - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/whishlist`,
    siteName: "Bir E-Commerce",
    images: [
      {
        url: "/og-image-checkout.jpg",
        width: 1200,
        height: 630,
        alt: "Whishlist Page Preview - Bir E-Commerce",
      },
    ],
    type: "website",
  },
  alternates: {
    canonical: `${baseUrl}/whishlist`,
  },
};

export default function ContactPage() {
  return (
    <div className="ps-page--simple">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>
              <Link href="/shop">Shop</Link>
            </li>
            <li>Whishlist</li>
          </ul>
        </div>
      </div>

      {/* Start */}
      <div className="ps-section--shopping ps-whishlist">
        <div className="container">
          <div className="ps-section__header">
            <h1>Wishlist</h1>
          </div>
          <div className="ps-section__content">
            <div className="table-responsive">
              <table className="table ps-table--whishlist ps-table--responsive">
                <thead>
                  <tr>
                    <th />
                    <th>Product name</th>
                    <th>Unit Price</th>
                    <th>Status</th>
                    <th />
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Remove">
                      <a href="#">
                        <i className="icon-cross" />
                      </a>
                    </td>
                    <td data-label="Product">
                      <div className="ps-product--cart">
                        <div className="ps-product__thumbnail">
                          <a href="product-default.html">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/shop/1.jpg"
                              alt
                            />
                          </a>
                        </div>
                        <div className="ps-product__content">
                          <a href="product-default.html">
                            Apple iPhone Retina 6s Plus 64GB
                          </a>
                          <p>
                            Sold By:<strong> YOUNG SHOP</strong>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td className="price" data-label="Price">
                      $205.00
                    </td>
                    <td data-label="Status">
                      <span className="ps-tag ps-tag--in-stock">In-stock</span>
                    </td>
                    <td data-label="action">
                      <a className="ps-btn" href="#">
                        Add to cart
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Remove">
                      <a href="#">
                        <i className="icon-cross" />
                      </a>
                    </td>
                    <td data-label="Product">
                      <div className="ps-product--cart">
                        <div className="ps-product__thumbnail">
                          <a href="product-default.html">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/shop/1.jpg"
                              alt
                            />
                          </a>
                        </div>
                        <div className="ps-product__content">
                          <a href="product-default.html">
                            Apple iPhone Retina 6s Plus 64GB
                          </a>
                          <p>
                            Sold By:<strong> YOUNG SHOP</strong>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td className="price" data-label="Price">
                      $205.00
                    </td>
                    <td data-label="Status">
                      <span className="ps-tag ps-tag--in-stock">In-stock</span>
                    </td>
                    <td data-label="action">
                      <a className="ps-btn" href="#">
                        Add to cart
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Remove">
                      <a href="#">
                        <i className="icon-cross" />
                      </a>
                    </td>
                    <td data-label="Product">
                      <div className="ps-product--cart">
                        <div className="ps-product__thumbnail">
                          <a href="product-default.html">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/shop/2.jpg"
                              alt
                            />
                          </a>
                        </div>
                        <div className="ps-product__content">
                          <a href="product-default.html">
                            Marshall Kilburn Portable Wireless Speaker
                          </a>
                          <p>
                            Sold By:<strong> YOUNG SHOP</strong>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td className="price" data-label="Price">
                      $205.00
                    </td>
                    <td data-label="Status">
                      <span className="ps-tag ps-tag--in-stock">In-stock</span>
                    </td>
                    <td data-label="action">
                      <a className="ps-btn" href="#">
                        Add to cart
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      {/* END */}
    </div>
  );
}
