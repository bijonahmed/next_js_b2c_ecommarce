"use client"; // required for client components
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAuth } from "../../../context/AuthContext"; // Adjust the path as necessary
import { useState } from "react";

export default function LoginPage() {
  const router = useRouter(); //  Next.js Router
  const [email, setemail] = useState("");
  const [password, setPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");
  const { login } = useAuth();

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError("");
    setSuccess("");

    try {
      const res = await fetch(`${process.env.NEXT_PUBLIC_API_BASE}/login`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ email, password }),
      });

      const data = await res.json();

      if (res.ok) {
        if (data.token) {
          localStorage.setItem("token", data.token);
        }
        if (data.user) {
          localStorage.setItem("user", JSON.stringify(data.user));
        }
        if (data.roles) {
          localStorage.setItem("roles", JSON.stringify(data.roles));
        }
        if (data.permissions) {
          localStorage.setItem("permissions", JSON.stringify(data.permissions));
        }
        setSuccess("Login successful!");
        login(data.token, data.user.name, data.roles, data.permissions);

        // ✅ role_type condition
        const roleType = data.user?.role_type || "";

        if (roleType === "") {
          // Allowed: go to dashboard
          setSuccess("Login successful!");
          login(data.token, data.user.name, data.roles, data.permissions);
          router.replace("/dashboard");
        } else {
          // Not allowed: logout + redirect
          setError("Access denied for this role.");
          localStorage.clear();
          router.replace("/login");
        }
      } else {
        setError(data.message || "Invalid login credentials");
      }
    } catch (err) {
      setError("Something went wrong. Please try again.");
    }

    setLoading(false);
  };

  return (
    <div className="ps-my-account">
      <div className="container">
        <form className="ps-form--account ps-tab-root" onSubmit={handleSubmit}>
          <ul className="ps-tab-list">
            <li className="active">
              <a href="#sign-in">Administrator Login</a>
            </li>
          </ul>

          <div className="ps-tabs">
            <div className="ps-tab active" id="sign-in">
              <div className="ps-form__content">
                <h5>Log In Your Account</h5>

                {/* Email */}
                <div className="form-group">
                  <input
                    className="form-control"
                    type="email"
                    placeholder="Username or email address"
                    value={email}
                    onChange={(e) => setemail(e.target.value)}
                    required
                  />
                </div>

                {/* Password */}
                <div className="form-group form-forgot">
                  <input
                    className="form-control"
                    type="password"
                    placeholder="Password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    required
                  />
                </div>

                {/* Submit */}
                <div className="form-group submtit">
                  <button
                    type="submit"
                    className="ps-btn ps-btn--fullwidth"
                    disabled={loading}
                  >
                    {loading ? "Logging in..." : "Login"}
                  </button>
                </div>
                <br />
                {/* Status Messages */}
                {error && <p className="text-danger mt-3">{error}</p>}
                {success && <p className="text-success mt-3">{success}</p>}
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
}
