"use client"; // Required in Next.js App Router for client-side component

import React, { useState, useEffect } from "react";
import { useRouter, usePathname } from "next/navigation";
import DataTable from "react-data-table-component";
import Link from "next/link";
import CategoryTree from "./CategoryTree";
import { useAuth } from "../../context/AuthContext";
import toast, { Toaster } from "react-hot-toast";

export default function UserPage() {
  const router = useRouter();
  const { token, permissions } = useAuth();
  const perms = Array.isArray(permissions)
    ? permissions
    : permissions?.split(",") || [];
  const pathname = usePathname();
  const title = "Product Categories List";
  //const title = pathname ? pathname.replace("/", "").charAt(0).toUpperCase() + pathname.slice(2) : "";
  // update document title
  useEffect(() => {
    if (title) {
      document.title = title;
    }
  }, [title]);
  const [statusFilter, setStatusFilter] = useState("");
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(false);

  const [search, setSearch] = useState("");

  const fetchProCategory = async () => {
    setLoading(true);
    try {
      const url = `${process.env.NEXT_PUBLIC_API_BASE}/product-category/index`;
      const res = await fetch(url, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
      });

      let result;
      try {
        result = await res.json();
      } catch (e) {
        result = null;
      }

      if (!res.ok) {
        if (result && result.message) {
          throw new Error(result.message);
        } else {
          throw new Error(`HTTP Error: ${res.status}`);
        }
      }
      setData(result.data || []);
    } catch (err) {
      console.error("Fetch users failed:", err.message);
      toast.error(err.message || "Something went wrong!");
    } finally {
      setLoading(false);
    }
  };

  const fetchData = async () => {
    fetchProCategory();
  };

  useEffect(() => {
    fetchProCategory();
  }, []);

  if (!perms.includes("view product category")) {
    router.replace("/dashboard");
    return false;
  }

  return (
    <main className="app-main" id="main" tabIndex={-1}>
      {/*begin::App Content Header*/}
      <div className="app-content-header">
        {/*begin::Container*/}
        <div className="container-fluid">
          {/*begin::Row*/}
          <div className="row">
            <div className="col-sm-6">
              <h3 className="mb-0">{title}</h3>
            </div>
            <div className="col-sm-6">
              <ol className="breadcrumb float-sm-end">
                <li className="breadcrumb-item">
                  <Link href="/dashboard">Home</Link>
                </li>
                <li className="breadcrumb-item active" aria-current="page">
                  {title}
                </li>
              </ol>
            </div>
          </div>
          {/*end::Row*/}
        </div>
        {/*end::Container*/}
      </div>

      {/*begin::App Content*/}
      <Toaster position="top-right" />
      <div className="app-content">
        {/*begin::Container*/}
        <div className="container-fluid">
          {/*begin::Row*/}
          <div className="card card-primary card-outline mb-4">
            {/* Header */}
            <div className="card-header">
              <div className="card-title w-100">
                <div className="row g-2 align-items-center">
                  {/* Column 1: Search input */}

                  {/* Status Filter */}

                  {/* Column 2: Fetch button */}
                  <div className="col-6 col-md-3 col-lg-2">
                    <button
                      type="button"
                      className="btn btn-outline-secondary w-100"
                      onClick={() => fetchData()}
                    >
                      Fetch
                    </button>
                  </div>

                  {/* Column 3: Add User button */}
                  <div className="col-6 col-md-3 col-lg-1 ms-auto">
                    {perms.includes("create product category") ? (
                      <button
                        className="btn btn-primary w-100"
                        onClick={() =>
                          router.push(`/product-categories-manage/add`)
                        }
                      >
                        Add Category
                      </button>
                    ) : null}{" "}
                  </div>
                </div>
              </div>
            </div>
            <div className="card-body p-0">
              {loading ? (
                <>
                  <div className="text-center py-5">
                    <div className="spinner-border text-primary" role="status">
                      <span className="visually-hidden">Loading...</span>
                    </div>
                  </div>
                </>
              ) : (
                <CategoryTree
                  categories={data}
                  reloadCategories={fetchProCategory} // pass reload method
                />
              )}
            </div>
          </div>

          {/*end::Body*/}
        </div>

        {/*end::Row*/}
      </div>
      {/*end::Container*/}
      {/*end::App Content*/}
    </main>
  );
}
