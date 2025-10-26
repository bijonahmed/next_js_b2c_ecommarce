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
                6th & 7th Floor, Navana Osman @link, 214/d Bir Uttam Mir Shawkat Sarak, Dhaka 1208 <br />
                <a href="mailto:contact@martfury.co">birgh.group.digital@gmail.com</a>
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
                <a href="#">Policy</a>
              </li>
              <li>
                <a href="#">Term &amp; Condition</a>
              </li>
              <li>
                <a href="shipping.html">Shipping</a>
              </li>
              <li>
                <a href="return.html">Return</a>
              </li>
              <li>
                <a href="faqs.html">FAQs</a>
              </li>
            </ul>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Company</h4>
            <ul className="ps-list--link">
              <li>
                <a href="about-us.html">About Us</a>
              </li>
              <li>
                <a href="#">Affilate</a>
              </li>
              <li>
                <a href="shipping.html">Career</a>
              </li>
              <li>
                <a href="contact-us.html">Contact</a>
              </li>
            </ul>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Bussiness</h4>
            <ul className="ps-list--link">
              <li>
                <a href="about-us.html">Our Press</a>
              </li>
              <li>
                <a href="checkout.html">Checkout</a>
              </li>
              <li>
                <a href="my-account.html">My account</a>
              </li>
              <li>
                <a href="shop-default.html">Shop</a>
              </li>
            </ul>
          </aside>
        </div>
        
        <div className="ps-footer__copyright">
          <p>© {new Date().getFullYear()} Bir E-Commerce. All Rights Reserved</p>
        </div>
      </div>
    </footer>


   
  );
}
