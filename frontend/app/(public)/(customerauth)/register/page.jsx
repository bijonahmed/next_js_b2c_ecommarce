"use client";
import { useState } from "react";
import Link from "next/link";
export default function RegisterPage() {
  const [formData, setFormData] = useState({
    name: "",
    email: "",
    password: "",
    confirmPassword: "",
  });

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.id]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log("Form Data:", formData);
    // Add your API call to register the user here
  };

  return (
    <div className="container py-5">
  <div className="row justify-content-center">
    <div className="col-md-6 col-lg-5">
      <div className="card shadow-sm border-0">
        <div className="card-body p-4">
          <form className="ps-form--account ps-tab-root" onSubmit={handleSubmit}>
            <ul className="ps-tab-list mb-4">
              <li className="active">
                <a href="#register" className="fw-bold">Register</a>
              </li>
            </ul>

            <div className="ps-tabs">
              <div className="ps-tab active" id="register">
                <div className="ps-form__content">
                  <h5 className="text-center mb-4">Create Your Account</h5>

                  {/* Full Name */}
                  <div className="form-group mb-3">
                    <input
                      className="form-control"
                      type="text"
                      id="name"
                      name="name"
                      placeholder="Full Name"
                      value={formData.name}
                      onChange={handleChange}
                      required
                    />
                  </div>

                  {/* Email */}
                  <div className="form-group mb-3">
                    <input
                      className="form-control"
                      type="email"
                      id="email"
                      name="email"
                      placeholder="Email Address"
                      value={formData.email}
                      onChange={handleChange}
                      required
                    />
                  </div>

                  {/* Password */}
                  <div className="form-group mb-3">
                    <input
                      className="form-control"
                      type="password"
                      id="password"
                      name="password"
                      placeholder="Password"
                      value={formData.password}
                      onChange={handleChange}
                      required
                    />
                  </div>

                  {/* Confirm Password */}
                  <div className="form-group mb-4">
                    <input
                      className="form-control"
                      type="password"
                      id="confirmPassword"
                      name="confirmPassword"
                      placeholder="Confirm Password"
                      value={formData.confirmPassword}
                      onChange={handleChange}
                      required
                    />
                  </div>

                  {/* Submit */}
                  <div className="form-group submtit">
                    <button type="submit" className="ps-btn ps-btn--fullwidth btn-success">
                      Register
                    </button>
                  </div>

                  {/* Login link */}
                  <div className="mt-3 text-center">
                    Already have an account?{" "}
                    <Link href="/my-account" className="text-primary">Login</Link>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

  );
}
