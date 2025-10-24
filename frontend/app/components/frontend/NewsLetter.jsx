// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";

export default function NewsLetter() {
  return (
    <div className="ps-newsletter">
      <div className="container">
        <form
          className="ps-form--newsletter"
          action="https://nouthemes.net/html/martfury/do_action"
          method="post"
        >
          <div className="row">
            <div className="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12 ">
              <div className="ps-form__left">
                <h3>Newsletter</h3>
                <p>Subcribe to get information about products and coupons</p>
              </div>
            </div>
            <div className="col-xl-7 col-lg-12 col-md-12 col-sm-12 col-12 ">
              <div className="ps-form__right">
                <div className="form-group--nest">
                  <input
                    className="form-control"
                    type="email"
                    placeholder="Email address"
                  />
                  <button className="ps-btn">Subscribe</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
}
