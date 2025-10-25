"use client";
import React, { useState } from "react";

export default function SidebarSystem() {
  const [activePanel, setActivePanel] = useState(null);

  const togglePanel = (panel) => {
    setActivePanel(activePanel === panel ? null : panel);
  };

  const closeAll = () => setActivePanel(null);

  return (
    <div>
      <div>
        <div className="ps-panel--sidebar" id="navigation-mobile">
          <div className="ps-panel__header">
            <h3>Categories</h3>
          </div>
          <div className="ps-panel__content">
            <div className="menu--product-categories">
              <div className="menu__toggle">
                <i className="icon-menu" />
                <span> Shop by Department</span>
              </div>
              <div className="menu__content">
                <ul className="menu--mobile">
                  <li>
                    <a href="#.html">Hot Promotions</a>
                  </li>
                  <li className="menu-item-has-children has-mega-menu">
                    <a href="#">Consumer Electronic</a>
                    <span className="sub-toggle" />
                    <div className="mega-menu">
                      <div className="mega-menu__column">
                        <h4>
                          Electronic
                          <span className="sub-toggle" />
                        </h4>
                        <ul className="mega-menu__list">
                          <li>
                            <a href="#.html">Home Audio &amp; Theathers</a>
                          </li>
                          <li>
                            <a href="#.html">TV &amp; Videos</a>
                          </li>
                          <li>
                            <a href="#.html">Camera, Photos &amp; Videos</a>
                          </li>
                          <li>
                            <a href="#.html">Cellphones &amp; Accessories</a>
                          </li>
                          <li>
                            <a href="#.html">Headphones</a>
                          </li>
                          <li>
                            <a href="#.html">Videosgames</a>
                          </li>
                          <li>
                            <a href="#.html">Wireless Speakers</a>
                          </li>
                          <li>
                            <a href="#.html">Office Electronic</a>
                          </li>
                        </ul>
                      </div>
                      <div className="mega-menu__column">
                        <h4>
                          Accessories &amp; Parts
                          <span className="sub-toggle" />
                        </h4>
                        <ul className="mega-menu__list">
                          <li>
                            <a href="#.html">Digital Cables</a>
                          </li>
                          <li>
                            <a href="#.html">Audio &amp; Video Cables</a>
                          </li>
                          <li>
                            <a href="#.html">Batteries</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </li>
                  <li>
                    <a href="#.html">Clothing &amp; Apparel</a>
                  </li>
                  <li>
                    <a href="#.html">Home, Garden &amp; Kitchen</a>
                  </li>
                  <li>
                    <a href="#.html">Health &amp; Beauty</a>
                  </li>
                  <li>
                    <a href="#.html">Yewelry &amp; Watches</a>
                  </li>
                  <li className="menu-item-has-children has-mega-menu">
                    <a href="#">Computer &amp; Technology</a>
                    <span className="sub-toggle" />
                    <div className="mega-menu">
                      <div className="mega-menu__column">
                        <h4>
                          Computer &amp; Technologies
                          <span className="sub-toggle" />
                        </h4>
                        <ul className="mega-menu__list">
                          <li>
                            <a href="#.html">Computer &amp; Tablets</a>
                          </li>
                          <li>
                            <a href="#.html">Laptop</a>
                          </li>
                          <li>
                            <a href="#.html">Monitors</a>
                          </li>
                          <li>
                            <a href="#.html">Networking</a>
                          </li>
                          <li>
                            <a href="#.html">Drive &amp; Storages</a>
                          </li>
                          <li>
                            <a href="#.html">Computer Components</a>
                          </li>
                          <li>
                            <a href="#.html">Security &amp; Protection</a>
                          </li>
                          <li>
                            <a href="#.html">Gaming Laptop</a>
                          </li>
                          <li>
                            <a href="#.html">Accessories</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </li>
                  <li>
                    <a href="#.html">Babies &amp; Moms</a>
                  </li>
                  <li>
                    <a href="#.html">Sport &amp; Outdoor</a>
                  </li>
                  <li>
                    <a href="#.html">Phones &amp; Accessories</a>
                  </li>
                  <li>
                    <a href="#.html">Books &amp; Office</a>
                  </li>
                  <li>
                    <a href="#.html">Cars &amp; Motocycles</a>
                  </li>
                  <li>
                    <a href="#.html">Home Improments</a>
                  </li>
                  <li>
                    <a href="#.html">Vouchers &amp; Services</a>
                  </li>
                </ul>
              </div>
            </div>
            {/*+createMenu(product_categories, 'menu--mobile')*/}
          </div>
        </div>
        <div className="navigation--list">
          <div className="navigation__content">
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#menu-mobile"
            >
              <i className="icon-menu" />
              <span> Menu</span>
            </a>
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#navigation-mobile"
            >
              <i className="icon-list4" />
              <span> Categories</span>
            </a>
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#search-sidebar"
            >
              <i className="icon-magnifier" />
              <span>Search</span>
            </a>
            <a
              className="navigation__item ps-toggle--sidebar"
              href="#cart-mobile"
            >
              <i className="icon-bag2" />
              <span> Cart</span>
            </a>
          </div>
        </div>
        <div className="ps-panel--sidebar" id="search-sidebar">
          <div className="ps-panel__header">
            <form
              className="ps-form--search-mobile"
              action="https://nouthemes.net/html/martfury/index.html"
              method="get"
            >
              <div className="form-group--nest">
                <input
                  className="form-control"
                  type="text"
                  placeholder="Search something..."
                />
                <button>
                  <i className="icon-magnifier" />
                </button>
              </div>
            </form>
          </div>
          <div className="navigation__content" />
        </div>
        <div className="ps-panel--sidebar" id="menu-mobile">
          <div className="ps-panel__header">
            <h3>Menu</h3>
          </div>
          <div className="ps-panel__content">
            <ul className="menu--mobile">
              <li className="menu-item-has-children">
                <a href="index-2.html">Home</a>
                <span className="sub-toggle" />
                <ul className="sub-menu">
                  <li>
                    <a href="index.html">Marketplace Full Width</a>
                  </li>
                  <li>
                    <a href="home-autopart.html">Home Auto Parts</a>
                  </li>
                  <li>
                    <a href="home-technology.html">Home Technology</a>
                  </li>
                  <li>
                    <a href="home-organic.html">Home Organic</a>
                  </li>
                  <li>
                    <a href="home-marketplace.html">Home Marketplace V1</a>
                  </li>
                  <li>
                    <a href="home-marketplace-2.html">Home Marketplace V2</a>
                  </li>
                  <li>
                    <a href="home-marketplace-3.html">Home Marketplace V3</a>
                  </li>
                  <li>
                    <a href="home-marketplace-4.html">Home Marketplace V4</a>
                  </li>
                  <li>
                    <a href="home-electronic.html">Home Electronic</a>
                  </li>
                  <li>
                    <a href="home-furniture.html">Home Furniture</a>
                  </li>
                  <li>
                    <a href="home-kid.html">Home Kids</a>
                  </li>
                  <li>
                    <a href="homepage-photo-and-video.html">
                      Home photo and picture
                    </a>
                  </li>
                  <li>
                    <a href="home-medical.html">Home Medical</a>
                  </li>
                </ul>
              </li>
              <li className="menu-item-has-children has-mega-menu">
                <a href="shop-default-2.html">Shop</a>
                <span className="sub-toggle" />
                <div className="mega-menu">
                  <div className="mega-menu__column">
                    <h4>
                      Catalog Pages
                      <span className="sub-toggle" />
                    </h4>
                    <ul className="mega-menu__list">
                      <li>
                        <a href="shop-default.html">Shop</a>
                      </li>
                      <li>
                        <a href="shop-default.html">Shop Fullwidth</a>
                      </li>
                      <li>
                        <a href="shop-default.html">Shop Categories</a>
                      </li>
                      <li>
                        <a href="shop-default.html">Shop Sidebar</a>
                      </li>
                      <li>
                        <a href="shop-default.html">Shop Without Banner</a>
                      </li>
                      <li>
                        <a href="shop-default.html">Shop Carousel</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li className="menu-item-has-children has-mega-menu">
                <a href="#">Pages</a>
                <span className="sub-toggle" />
                <div className="mega-menu">
                  <div className="mega-menu__column">
                    <h4>
                      Basic Page
                      <span className="sub-toggle" />
                    </h4>
                    <ul className="mega-menu__list">
                      <li>
                        <a href="about-us.html">About Us</a>
                      </li>
                      <li>
                        <a href="contact-us.html">Contact</a>
                      </li>
                      <li>
                        <a href="faqs.html">Faqs</a>
                      </li>
                      <li>
                        <a href="comming-soon.html">Comming Soon</a>
                      </li>
                      <li>
                        <a href="404-page.html">404 Page</a>
                      </li>
                    </ul>
                  </div>
                  <div className="mega-menu__column">
                    <h4>
                      Vendor Pages
                      <span className="sub-toggle" />
                    </h4>
                    <ul className="mega-menu__list">
                      <li>
                        <a href="become-a-vendor.html">Become a Vendor</a>
                      </li>
                      <li>
                        <a href="vendor-store.html">Vendor Store</a>
                      </li>
                      <li>
                        <a href="vendor-dashboard-free.html">
                          Vendor Dashboard Free
                        </a>
                      </li>
                      <li>
                        <a href="vendor-dashboard-pro.html">
                          Vendor Dashboard Pro
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li className="menu-item-has-children has-mega-menu">
                <a href="#">Blogs</a>
                <span className="sub-toggle" />
                <div className="mega-menu">
                  <div className="mega-menu__column">
                    <h4>
                      Blog Layout
                      <span className="sub-toggle" />
                    </h4>
                    <ul className="mega-menu__list">
                      <li>
                        <a href="blog-grid.html">Grid</a>
                      </li>
                      <li>
                        <a href="blog-list.html">Listing</a>
                      </li>
                      <li>
                        <a href="blog-small-thumb.html">Small Thumb</a>
                      </li>
                      <li>
                        <a href="blog-left-sidebar.html">Left Sidebar</a>
                      </li>
                      <li>
                        <a href="blog-right-sidebar.html">Right Sidebar</a>
                      </li>
                    </ul>
                  </div>
                  <div className="mega-menu__column">
                    <h4>
                      Single Blog
                      <span className="sub-toggle" />
                    </h4>
                    <ul className="mega-menu__list">
                      <li>
                        <a href="blog-detail.html">Single 1</a>
                      </li>
                      <li>
                        <a href="blog-detail-2.html">Single 2</a>
                      </li>
                      <li>
                        <a href="blog-detail-3.html">Single 3</a>
                      </li>
                      <li>
                        <a href="blog-detail-4.html">Single 4</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <div id="loader-wrapper">
          <div className="loader-section section-left" />
          <div className="loader-section section-right" />
        </div>
        <div className="ps-search" id="site-search">
          <a className="ps-btn--close" href="#" />
          <div className="ps-search__content">
            <form
              className="ps-form--primary-search"
              action="https://nouthemes.net/html/martfury/do_action"
              method="post"
            >
              <input
                className="form-control"
                type="text"
                placeholder="Search for..."
              />
              <button>
                <i className="aroma-magnifying-glass" />
              </button>
            </form>
          </div>
        </div>
        <div
          className="modal fade"
          id="product-quickview"
          tabIndex={-1}
          role="dialog"
          aria-labelledby="product-quickview"
          aria-hidden="true"
        >
          <div className="modal-dialog modal-dialog-centered" role="document">
            <div className="modal-content">
              <span className="modal-close" data-bs-dismiss="modal">
                <i className="icon-cross2" />
              </span>
              <article className="ps-product--detail ps-product--fullwidth ps-product--quickview">
                <div className="ps-product__header">
                  <div className="ps-product__thumbnail" data-vertical="false">
                    <div className="ps-product__images" data-arrow="true">
                      <div className="item">
                        <img
                          loading="lazy"
                          src="/frontend_theme/img/products/detail/fullwidth/1.jpg"
                          alt="img"
                        />
                      </div>
                      <div className="item">
                        <img
                          loading="lazy"
                          src="/frontend_theme/img/products/detail/fullwidth/2.jpg"
                          alt="img"
                        />
                      </div>
                      <div className="item">
                        <img
                          loading="lazy"
                          src="/frontend_theme/img/products/detail/fullwidth/3.jpg"
                          alt="img"
                        />
                      </div>
                    </div>
                  </div>
                  <div className="ps-product__info">
                    <h1>Marshall Kilburn Portable Wireless Speaker</h1>
                    <div className="ps-product__meta">
                      <p>
                        Brand:<a href="shop-default.html">Sony</a>
                      </p>
                      <div className="ps-product__rating">
                        <select className="ps-rating" data-read-only="true">
                          <option value={1}>1</option>
                          <option value={1}>2</option>
                          <option value={1}>3</option>
                          <option value={1}>4</option>
                          <option value={2}>5</option>
                        </select>
                        <span>(1 review)</span>
                      </div>
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
                      <a className="ps-btn ps-btn--black" href="#">
                        Add to cart
                      </a>
                      <a className="ps-btn" href="#">
                        Buy Now
                      </a>
                      <div className="ps-product__actions">
                        <a href="#">
                          <i className="icon-heart" />
                        </a>
                        <a href="#">
                          <i className="icon-chart-bars" />
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
