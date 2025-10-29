// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";

export default function ClientFooter() {
  return (
    <footer className="ps-footer">
      <div className="container">
        <div className="ps-footer__widgets">
          <aside className="widget widget_footer widget_contact-us">
            <h4 className="widget-title">Contact us</h4>
            <div className="widget_content">
              <p>Call us 24/7</p>
              <h3>01329683606</h3>
              <p>
                6th & 7th Floor, Navana Osman @link, 214/d Bir Uttam Mir Shawkat
                Sarak, Dhaka 1208 <br />
                <a href="mailto:contact@martfury.co">
                  birgh.group.digital@gmail.com
                </a>
              </p>
              <ul className="ps-list--social">
                <li>
                  <a className="facebook" href="#">
                    <i className="fa-brands fa-facebook" />
                  </a>
                </li>
              </ul>
            </div>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Quick links</h4>
            <ul className="ps-list--link">
              <li>
                <Link href="/policy">Policy</Link>
              </li>
              <li>
                <Link href="/terms">Term &amp; Condition</Link>
              </li>
              <li>
                <Link href="/return">Return and cancellation policy</Link>
              </li>
              <li>
                <Link href="/shop">Shipping</Link>
              </li>
            </ul>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Company</h4>
            <ul className="ps-list--link">
              <li>
                <Link href="/about-us">About Us</Link>
              </li>
              <li>
                <Link href="/faq">FAQs</Link>
              </li>
              <li>
                <Link href="/contact">Contact</Link>
              </li>
              <li>
                <Link href="/login">Admistrator</Link>
              </li>
            </ul>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Bussiness</h4>
            <ul className="ps-list--link">
              <li>
                <Link href="/about-us">Our Press</Link>
              </li>
              <li>
                <Link href="/cart">Cart</Link>
              </li>
              <li>
                <Link href="/checkout">Checkout</Link>
              </li>
              <li>
                <Link href="/customer-dashboard">My account</Link>
              </li>
              <li>
                <Link href="/shop">Shop</Link>
              </li>
            </ul>
          </aside>
        </div>

        <div className="ps-footer__copyright d-flex justify-content-center">
          <p>
            © {new Date().getFullYear()} Bir E-Commerce. All Rights Reserved
          </p>
        </div>
      </div>
    </footer>
  );
}
