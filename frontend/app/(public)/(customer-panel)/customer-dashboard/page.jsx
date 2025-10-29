"use client"; // required for client components
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAuth } from "../../../context/AuthContext"; // Adjust the path as necessary
import Sidebar from "../customer-dashboard/sidebar";
import { useEffect, useState } from "react";

export default function LoginPage() {
  const router = useRouter(); // ✅ Next.js Router
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");
  const { login } = useAuth();

  useEffect(() => {
    const token = localStorage.getItem("token"); // get your token
    console.log("Token: " + token);
    if (!token) {
      router.replace("/"); // redirect home
    } else {
      setLoading(false); // token exists, show dashboard
    }
  }, [router]);

  if (loading) {
    return <p>Redirecting...</p>; // optional loading state
  }

  return (
    <main className="ps-page--my-account">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>User Information</li>
          </ul>
        </div>
      </div>
      <section className="ps-section--account">
        <div className="container">
          <div className="row">
            <div className="col-lg-4">
              <div className="ps-section__left">
                <Sidebar />
              </div>
            </div>
            <div className="col-lg-8">
              <div className="ps-section__right">
                <form
                  className="ps-form--account-setting"
                  action="https://nouthemes.net/html/martfury/index.html"
                  method="get"
                >
                  <div className="ps-form__header">
                    <h3> User Information</h3>
                  </div>
                  <div className="ps-form__content">
                    <div className="form-group">
                      <label>Name</label>
                      <input
                        className="form-control"
                        type="text"
                        placeholder="Please enter your name..."
                      />
                    </div>
                    <div className="row">
                      <div className="col-sm-6">
                        <div className="form-group">
                          <label>Phone Number</label>
                          <input
                            className="form-control"
                            type="text"
                            placeholder="Please enter phone number..."
                          />
                        </div>
                      </div>
                      <div className="col-sm-6">
                        <div className="form-group">
                          <label>Email</label>
                          <input
                            className="form-control"
                            type="text"
                            placeholder="Please enter your email..."
                          />
                        </div>
                      </div>
                      <div className="col-sm-6">
                        <div className="form-group">
                          <label>Birthday</label>
                          <input
                            className="form-control"
                            type="text"
                            placeholder="Please enter your birthday..."
                          />
                        </div>
                      </div>
                      <div className="col-sm-6">
                        <div className="form-group">
                          <label>Gender</label>
                          <select className="form-control">
                            <option value={1}>Male</option>
                            <option value={2}>Female</option>
                            <option value={3}>Other</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="form-group submit">
                    <button className="ps-btn">Update</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
