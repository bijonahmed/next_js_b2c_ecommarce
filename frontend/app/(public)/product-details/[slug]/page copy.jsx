import Link from "next/link";
import ProductSlider from "./ProductSlider";
import RelatedProducts from "./RelatedProducts";
import styles from "./ProductDetail.module.css"; // correct path

const relatedProducts = [
  {
    title: "Men’s Shorts",
    vendor: "Robert's Store",
    price: "$13.43",
    image: "/frontend_theme/img/products/home/1.jpg",
    link: "#",
  },
  {
    title: "Wireless Headphones",
    vendor: "Sony",
    price: "$56.99",
    image: "/frontend_theme/img/products/home/2.jpg",
    link: "#",
  },
  {
    title: "Bluetooth Speaker",
    vendor: "Marshall",
    price: "$36.78",
    image: "/frontend_theme/img/products/home/3.jpg",
    link: "#",
  },
  {
    title: "Wireless Headphones",
    vendor: "Sony",
    price: "$56.99",
    image: "/frontend_theme/img/products/home/2.jpg",
    link: "#",
  },
  {
    title: "Wireless Headphones",
    vendor: "Sony",
    price: "$56.99",
    image: "/frontend_theme/img/products/home/2.jpg",
    link: "#",
  },
  {
    title: "Smart Watch",
    vendor: "Apple",
    price: "$199.99",
    image: "/frontend_theme/img/products/home/5.jpg",
    link: "#",
  },
  {
    title: "Wireless Headphones",
    vendor: "Sony",
    price: "$56.99",
    image: "/frontend_theme/img/products/home/2.jpg",
    link: "#",
  },
  {
    title: "Wireless Headphones",
    vendor: "Sony",
    price: "$56.99",
    image: "/frontend_theme/img/products/home/2.jpg",
    link: "#",
  },
];

// In JSX
const images = [
  "/frontend_theme/img/products/detail/fullwidth/1.jpg",
  "/frontend_theme/img/products/detail/fullwidth/2.jpg",
  "/frontend_theme/img/products/detail/fullwidth/3.jpg",
];

const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";

export async function generateMetadata({ params }) {
  const { slug } = params;
  return {
    title: `${slug.replace(/-/g, " ")} - Bir E-Commerce`,
    description: `Explore ${slug.replace(
      /-/g,
      " "
    )} details on Bir E-Commerce.`,
    openGraph: {
      title: `${slug.replace(/-/g, " ")} - Bir E-Commerce`,
      url: `${baseUrl}/shop/details/${slug}`,
      images: ["/og-image-checkout.jpg"],
    },
    alternates: {
      canonical: `${baseUrl}/shop/details/${slug}`,
    },
  };
}

export default function ShopDetailsPage({ params }) {
  const { slug } = params; // <--- here it is
  const formattedSlug = slug.replace(/-/g, " ");

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
            <li>{formattedSlug}</li>
          </ul>
        </div>
      </div>
      {/* Start */}
      <div className="ps-container">
        <div className="ps-page__container">
          <div className="ps-page__left">
            <div className="ps-product--detail ps-product--fullwidth">
              <div className="ps-product__header">
                {/* Slider */}

                <div className={styles["ps-product--detail"]}>
                  <div className="ps-product__thumbnail">
                    <ProductSlider images={images} />
                  </div>
                  <div className="ps-product__info">
                    <h1>Marshall Kilburn Portable Wireless Speaker</h1>
                    <div className="ps-product__meta">
                      <p>
                        Brand:<a href="shop-default.html">Sony</a>
                      </p>
                    </div>
                    <h4 className="ps-product__price">$36.78 – $56.99</h4>
                    <div className="ps-product__desc">
                      <p>
                        Sold By:
                        <a href="shop-default.html">
                          <strong> Go Pro</strong>
                        </a>
                      </p>
                      <ul className="ps-list--dot">
                        <li>
                          {" "}
                          Unrestrained and portable active stereo speaker
                        </li>
                        <li> Free from the confines of wires and chords</li>
                        <li> 20 hours of portable capabilities</li>
                        <li>
                          {" "}
                          Double-ended Coil Cord with 3.5mm Stereo Plugs
                          Included
                        </li>
                        <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>
                      </ul>
                    </div>

                    <div className="ps-product__shopping">
                      <figure>
                        <figcaption>Quantity</figcaption>
                        <div className="form-group--number">
                          <button className="up">
                            <i className="fa-solid fa-plus" />
                          </button>
                          <button className="down">
                            <i className="fa-solid fa-minus" />
                          </button>
                          <input
                            className="form-control"
                            type="text"
                            placeholder={1}
                          />
                        </div>
                      </figure>
                      <a
                        className="ps-btn ps-btn--black"
                        href="shopping-cart.html"
                      >
                        Add to cart
                      </a>
                      <a className="ps-btn" href="#">
                        Buy Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div className="ps-product__content ps-tab-root">
                <ul className="ps-tab-list">
                  <li className="active">
                    <a href="#tab-1">Description</a>
                  </li>
                </ul>
                <div className="ps-tabs">
                  <div className="ps-tab active" id="tab-1">
                    <div className="ps-document">
                      <h5>
                        Embodying the Raw, Wayward Spirit of Rock 'N' Roll
                      </h5>
                      <p>
                        Embodying the raw, wayward spirit of rock ‘n’ roll, the
                        Kilburn portable active stereo speaker takes the
                        unmistakable look and sound of Marshall, unplugs the
                        chords, and takes the show on the road.
                      </p>
                      <p>
                        Weighing in under 7 pounds, the Kilburn is a lightweight
                        piece of vintage styled engineering. Setting the bar as
                        one of the loudest speakers in its class, the Kilburn is
                        a compact, stout-hearted hero with a well-balanced audio
                        which boasts a clear midrange and extended highs for a
                        sound that is both articulate and pronounced. The
                        analogue knobs allow you to fine tune the controls to
                        your personal preferences while the guitar-influenced
                        leather strap enables easy and stylish travel.
                      </p>

                      <h5>What do you get</h5>
                      <p>
                        Sound of Marshall, unplugs the chords, and takes the
                        show on the road.
                      </p>
                      <p>
                        Weighing in under 7 pounds, the Kilburn is a lightweight
                        piece of vintage styled engineering. Setting the bar as
                        one of the loudest speakers in its class, the Kilburn is
                        a compact, stout-hearted hero with a well-balanced audio
                        which boasts a clear midrange and extended highs for a
                        sound that is both articulate and pronounced. The
                        analogue knobs allow you to fine tune the controls to
                        your personal preferences while the guitar-influenced
                        leather strap enables easy and stylish travel.
                      </p>
                      <p>
                        The FM radio is perhaps gone for good, the assumption
                        apparently being that the jury has ruled in favor of
                        streaming over the internet. The IR blaster is another
                        feature due for retirement – the S6 had it, then the
                        Note5 didn’t, and now with the S7 the trend is clear.
                      </p>
                      <h5>Perfectly Done</h5>
                      <p>
                        Meanwhile, the IP68 water resistance has improved from
                        the S5, allowing submersion of up to five feet for 30
                        minutes, plus there’s no annoying flap covering the
                        charging port
                      </p>
                      <ul className="pl-0">
                        <li>
                          No FM radio (except for T-Mobile units in the US, so
                          far)
                        </li>
                        <li>No IR blaster</li>
                        <li>No stereo speakers</li>
                      </ul>
                      <p>
                        If you’ve taken the phone for a plunge in the bath,
                        you’ll need to dry the charging port before plugging in.
                        Samsung hasn’t reinvented the wheel with the design of
                        the Galaxy S7, but it didn’t need to. The Gala S6 was an
                        excellently styled device, and the S7 has managed to
                        improve on that.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Related products */}
        <RelatedProducts products={relatedProducts} />
      </div>

      {/* END */}
    </div>
  );
}
