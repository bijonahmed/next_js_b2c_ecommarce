"use client";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useMemo } from "react";

export default function Sidebar() {
  const router = useRouter();
  const pathname = usePathname(); // may be undefined briefly on hydration

  // Normalize pathname so comparisons are stable:
  const getNormalized = (p = "") => {
    const noQuery = p.split("?")[0].split("#")[0];
    if (noQuery === "/") return "/";
    return noQuery.replace(/\/+$/, "");
  };

  const current = useMemo(() => getNormalized(pathname || "/"), [pathname]);

  // helper to check active: exact match OR parent (startsWith) for nested routes
  const isActive = (href, { allowSubroutes = true } = {}) => {
    const normHref = getNormalized(href);
    if (normHref === "/") return current === "/"; // home exact
    if (allowSubroutes) {
      return current === normHref || current.startsWith(normHref + "/");
    }
    return current === normHref;
  };

  // --- DEBUG: remove logs when working ---
  if (typeof window !== "undefined") {
    console.log("[Sidebar] pathname:", pathname, "=> normalized:", current);
  }

  return (
    <aside className="ps-widget--account-dashboard">
      <div className="ps-widget__header">
        <img loading="lazy" src="/frontend_theme/img/users/1.png" alt="image" />
        <figure>
          <figcaption>Hello</figcaption>
          <p>
            <a href="#">username@gmail.com</a>
          </p>
        </figure>
      </div>
      <div className="ps-widget__content">
        <ul>
          <li className={isActive("/customer-dashboard") ? "active" : ""}>
            <Link href="/customer-dashboard">
              <i className="icon-user" /> Account Information
            </Link>
          </li>

          <li className={isActive("/invoice") ? "active" : ""}>
            <Link href="/invoice">
              <i className="icon-papers" /> Invoices
            </Link>
          </li>

          <li className={isActive("/wishlist") ? "active" : ""}>
            <Link href="/wishlist">
              <i className="icon-heart" /> Wishlist
            </Link>
          </li>

          <li>
            <a
              href="#"
              onClick={(e) => {
                e.preventDefault();
                try {
                  // do your logout steps here (localStorage, api call, etc.)
                } finally {
                  router.push("/login"); // or wherever
                }
              }}
            >
              <i className="icon-power-switch" />
              Logout
            </a>
          </li>
        </ul>
      </div>
    </aside>
  );
}
