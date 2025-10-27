import Link from "next/link";
const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";

export const metadata = {
  title: "Cart - Bir E-Commerce",
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
    title: "Checkout - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/cart`,
    siteName: "Bir E-Commerce",
    images: [
      {
        url: "/og-image-checkout.jpg",
        width: 1200,
        height: 630,
        alt: "Checkout Page Preview - Bir E-Commerce",
      },
    ],
    type: "website",
  },
  alternates: {
    canonical: `${baseUrl}/cart`,
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
            <li>Cart</li>
          </ul>
        </div>
      </div>
      <div className="ps-section--shopping ps-shopping-cart">
        <div className="container">
          <div className="ps-section__header">
            <h1>Shopping Cart</h1>
          </div>
          <div className="ps-section__content">
            <div className="table-responsive">
              <table className="table ps-table--shopping-cart ps-table--responsive">
                <thead>
                  <tr>
                    <th>Product name</th>
                    <th>PRICE</th>
                    <th>QUANTITY</th>
                    <th>TOTAL</th>
                    <th />
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td data-label="Product">
                      <div className="ps-product--cart">
                        <div className="ps-product__thumbnail">
                          <a href="product-default.html">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/shop/1.jpg"
                              alt="image"
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
                      $1310.00
                    </td>
                    <td data-label="Quantity">
                      <div className="form-group--number">
                        <button className="up">+</button>
                        <button className="down">-</button>
                        <input
                          className="form-control"
                          type="text"
                          placeholder={1}
                          defaultValue={1}
                        />
                      </div>
                    </td>
                    <td data-label="Total">$1310.00</td>
                    <td data-label="Actions">
                      <a href="#">
                        <i className="icon-cross" />
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Product">
                      <div className="ps-product--cart">
                        <div className="ps-product__thumbnail">
                          <a href="product-default.html">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/shop/1.jpg"
                              alt="image"
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
                      $1150.00
                    </td>
                    <td data-label="Quantity">
                      <div className="form-group--number">
                        <button className="up">+</button>
                        <button className="down">-</button>
                        <input
                          className="form-control"
                          type="text"
                          placeholder={1}
                          defaultValue={1}
                        />
                      </div>
                    </td>
                    <td data-label="Total">$1150.00</td>
                    <td data-label="Actions">
                      <a href="#">
                        <i className="icon-cross" />
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td data-label="Product">
                      <div className="ps-product--cart">
                        <div className="ps-product__thumbnail">
                          <a href="product-default.html">
                            <img
                              loading="lazy"
                              src="/frontend_theme/img/products/shop/2.jpg"
                              alt="image"
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
                      $42.99 - $60.00
                    </td>
                    <td data-label="Quantity">
                      <div className="form-group--number">
                        <button className="up">+</button>
                        <button className="down">-</button>
                        <input
                          className="form-control"
                          type="text"
                          placeholder={1}
                          defaultValue={1}
                        />
                      </div>
                    </td>
                    <td data-label="Total">$42.99 - $60.00</td>
                    <td data-label="Actions">
                      <a href="#">
                        <i className="icon-cross" />
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div className="ps-section__cart-actions">
              <Link className="ps-btn" href="/shop">
                <i className="icon-arrow-left" /> Back to Shop
              </Link>
              <a className="ps-btn ps-btn--outline" href="#">
                <i className="icon-sync" /> Update cart
              </a>
            </div>
          </div>
          <div className="ps-section__footer">
            <div className="row">
              <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                <div className="ps-block--shopping-total">
                  <div className="ps-block__header">
                    <p>
                      Subtotal <span> $683.49</span>
                    </p>
                  </div>
                  <div className="ps-block__content">
                    <ul className="ps-block__product">
                      <li>
                        <span className="ps-block__shop">
                          YOUNG SHOP Shipping
                        </span>
                        <span className="ps-block__shipping">
                          Free Shipping
                        </span>
                        <span className="ps-block__estimate">
                          Estimate for <strong>Viet Nam</strong>
                          <a href="#">
                            {" "}
                            MVMTH Classical Leather Watch In Black ×1
                          </a>
                        </span>
                      </li>
                      <li>
                        <span className="ps-block__shop">
                          ROBERT’S STORE Shipping
                        </span>
                        <span className="ps-block__shipping">
                          Free Shipping
                        </span>
                        <span className="ps-block__estimate">
                          Estimate for <strong>Viet Nam</strong>
                          <a href="#">Apple Macbook Retina Display 12” ×1</a>
                        </span>
                      </li>
                    </ul>
                    <h3>
                      Total <span>$683.49</span>
                    </h3>
                  </div>
                </div>
                <Link className="ps-btn ps-btn--fullwidth" href="/checkout">
                  Proceed to checkout
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
