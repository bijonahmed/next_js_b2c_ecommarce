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
              <h3>1800 97 97 69</h3>
              <p>
                502 New Design Str, Melbourne, Australia <br />
                <a href="mailto:contact@martfury.co">contact@martfury.co</a>
              </p>
              <ul className="ps-list--social">
                <li>
                  <a className="facebook" href="#">
                    <i className="fa-brands fa-facebook" />
                  </a>
                </li>
                <li>
                  <a className="twitter" href="#">
                    <i className="fa-brands fa-twitter" />
                  </a>
                </li>
                <li>
                  <a className="google-plus" href="#">
                    <i className="fa-brands fa-google-plus" />
                  </a>
                </li>
                <li>
                  <a className="instagram" href="#">
                    <i className="fa-brands fa-instagram" />
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
        <div className="ps-footer__links">
          <p>
            <strong>Consumer Electric:</strong>
            <a href="#">Air Conditioners</a>
            <a href="#">Audios &amp; Theaters</a>
            <a href="#">Car Electronics</a>
            <a href="#">Office Electronics</a>
            <a href="#">TV Televisions</a>
            <a href="#">Washing Machines</a>
          </p>
          <p>
            <strong>Clothing &amp; Apparel:</strong>
            <a href="#">Printers</a>
            <a href="#">Projectors</a>
            <a href="#">Scanners</a>
            <a href="#">Store &amp; Business</a>
            <a href="#">4K Ultra HD TVs</a>
            <a href="#">LED TVs</a>
            <a href="#">OLED TVs</a>
          </p>
          <p>
            <strong>Home, Garden &amp; Kitchen:</strong>
            <a href="#">Cookware</a>
            <a href="#">Decoration</a>
            <a href="#">Furniture</a>
            <a href="#">Garden Tools</a>
            <a href="#">Garden Equipments</a>
            <a href="#">Powers And Hand Tools</a>
            <a href="#">Utensil &amp; Gadget</a>
          </p>
          <p>
            <strong>Healt="image"h &amp; Beauty:</strong>
            <a href="#">Hair Care</a>
            <a href="#">Decoration</a>
            <a href="#">Hair Care</a>
            <a href="#">Makeup</a>
            <a href="#">Body Shower</a>
            <a href="#">Skin Care</a>
            <a href="#">Cologine</a>
            <a href="#">Perfume</a>
          </p>
          <p>
            <strong>Jewelry &amp; Watches:</strong>
            <a href="#">Necklace</a>
            <a href="#">Pendant</a>
            <a href="#">Diamond Ring</a>
            <a href="#">Sliver Earing</a>
            <a href="#">Leather Watcher</a>
            <a href="#">Gucci</a>
          </p>
          <p>
            <strong>Computer &amp; Technologies:</strong>
            <a href="#">Desktop PC</a>
            <a href="#">Laptop</a>
            <a href="#">Smartphones</a>
            <a href="#">Tablet</a>
            <a href="#">Game Controller</a>
            <a href="#">Audio &amp; Video</a>
            <a href="#">Wireless Speaker</a>
            <a href="#">Done</a>
          </p>
        </div>
        <div className="ps-footer__copyright">
          <p>© 2025 Martfury. All Rights Reserved</p>
          <p>
            <span>We Using Safe Payment For:</span>
            <a href="#">
              <img loading="lazy" src="img/payment-method/1.jpg" alt="image" />
            </a>
            <a href="#">
              <img loading="lazy" src="img/payment-method/2.jpg" alt="image" />
            </a>
            <a href="#">
              <img loading="lazy" src="img/payment-method/3.jpg" alt="image" />
            </a>
            <a href="#">
              <img loading="lazy" src="img/payment-method/4.jpg" alt="image" />
            </a>
            <a href="#">
              <img loading="lazy" src="img/payment-method/5.jpg" alt="image" />
            </a>
          </p>
        </div>
      </div>
    </footer>


   
  );
}
