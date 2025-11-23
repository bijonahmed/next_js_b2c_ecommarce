"use client"; // Required in Next.js App Router for client-side component

import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { useAuth } from "../../context/AuthContext";
import toast, { Toaster } from "react-hot-toast";
import CustomDataTable from "../../context/CustomDataTable";
import useCategories from "../../hooks/useCategories";
import getSupllierList from "../../hooks/supplierList";
import useInventory from "../../hooks/inventoryReport";

export default function ProductPage() {
  const router = useRouter();
  const { token, permissions } = useAuth();
  const perms = Array.isArray(permissions)
    ? permissions
    : permissions?.split(",") || [];

  const title = "My Inventory";

  const [search, setSearch] = useState("");
  const [statusFilter, setStatusFilter] = useState("");
  const [supplierId, setSupplierFilter] = useState("");
  const { categoryData } = useCategories();
  const { suppliderData } = getSupllierList();
  const { inventoryData, refresh, loading } = useInventory();

  const fetchData = async () => {
    try {
      const url = `${process.env.NEXT_PUBLIC_API_BASE}/inventory/index`;
      //  console.log("URL:" + url);
      const res = await fetch(url, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
      });

      if (!res.ok) {
        throw new Error(`HTTP error! status: ${res.status}`);
      }
      const json = await res.json();
      setTotalRecords(json.total_records || 0);

      return {
        data: json.data || [],
        total: json.total_records || 0,
      };
    } catch (err) {
      console.error("Fetch products error:", err);
      return { data: [], total: 0 };
    }
  };

  // Permission check
  if (!perms.includes("view posts")) {
    router.replace("/dashboard");
    return null;
  }
  // Set page title
  useEffect(() => {
    if (title) document.title = title;
  }, [title]);

  const [loaded, setLoaded] = useState(false);

  // simple fade-in animation on mount
  useEffect(() => {
    const timer = setTimeout(() => setLoaded(true), 100);
    return () => clearTimeout(timer);
  }, []);

  const [newProductName, setNewProductName] = useState("");
  const [newProductQty, setNewProductQty] = useState("");

  const handleAddProduct = () => {
    if (!newProductName || !newProductQty) {
      alert("Please fill in both fields.");
      return;
    }

    const newId =
      inventoryData.length > 0
        ? inventoryData[inventoryData.length - 1].product_id + 1
        : 1;

    const newProduct = {
      product_id: newId,
      product_name: newProductName,
      total_qty_in: parseInt(newProductQty),
      total_qty_out: 0,
      current_balance: parseInt(newProductQty),
    };

    // Update inventory
    setInventoryData([...inventoryData, newProduct]);

    // Clear form
    setNewProductName("");
    setNewProductQty("");
  };

  return (
    <main className="app-main" id="main" tabIndex={-1}>
      <Toaster position="top-right" />
      <div className="app-content-header">
        <div className="container-fluid">
          <div className="row">
            <div className="col-sm-6">
              <h3 className="mb-0">{title}</h3>
            </div>
            <div className="col-sm-6">
              <ol className="breadcrumb float-sm-end">
                <li className="breadcrumb-item">
                  <Link href="/dashboard">Home</Link>
                </li>
                <li className="breadcrumb-item active">{title}</li>
              </ol>
            </div>
          </div>
        </div>
      </div>

      <div className="app-content">
        <div className="container-fluid">
          <div className="card card-primary card-outline mb-4">
            <div className="card-header">
              <div className="card-title w-100">
                <div className="row g-2 align-items-center">
                  <div className="col-6 col-md-2">
                    <button
                      type="button"
                      className="btn btn-outline-secondary w-100"
                      onClick={() => refresh()}
                    >
                      Fetch
                    </button>
                  </div>
                </div>
              </div>
            </div>

            {loading && (
              <div
                className="d-flex justify-content-center align-items-center"
                style={{ height: "200px" }}
              >
                <div
                  className="spinner-border text-primary"
                  role="status"
                  style={{ width: "3rem", height: "3rem" }}
                >
                  <span className="visually-hidden">Loading...</span>
                </div>
              </div>
            )}

            <div className="card-body">
              <div className="row">
                {/* Left Column - Table */}
                <div className="col-12 col-lg-8 mb-3">
                  <div className="table-responsive">
                    <table className="table table-striped table-bordered align-middle">
                      <thead>
                        <tr>
                          <th style={{ backgroundColor: "#f6a5a5" }}>
                            Product ID
                          </th>
                          <th style={{ backgroundColor: "#f6d6a5" }}>
                            Product Name
                          </th>
                          <th
                            className="text-end"
                            style={{ backgroundColor: "#a5d6f6" }}
                          >
                            Total Stock In
                          </th>
                          <th
                            className="text-end"
                            style={{ backgroundColor: "#a5f6b0" }}
                          >
                            Total Stock Out
                          </th>
                          <th
                            className="text-end"
                            style={{ backgroundColor: "#f6f6a5" }}
                          >
                            Current Balance
                          </th>
                          <th
                            className="text-center"
                            style={{ backgroundColor: "#d6a5f6" }}
                          >
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        {inventoryData.map((item) => {
                          let balanceColor =
                            item.current_balance === 0
                              ? "#ffcccc"
                              : item.current_balance < 10
                              ? "#fff3cd"
                              : "#d4edda";

                          return (
                            <tr
                              key={item.product_id}
                              style={{
                                transition: "all 0.3s ease",
                                backgroundColor: balanceColor,
                                cursor: "pointer",
                              }}
                              onMouseEnter={(e) =>
                                (e.currentTarget.style.backgroundColor =
                                  "#cce5ff")
                              }
                              onMouseLeave={(e) =>
                                (e.currentTarget.style.backgroundColor =
                                  balanceColor)
                              }
                            >
                              <td>{item.product_id}</td>
                              <td>{item.product_name}</td>
                              <td className="text-end">{item.total_qty_in}</td>
                              <td className="text-end">{item.total_qty_out}</td>
                              <td className="text-end">
                                {item.current_balance}
                              </td>
                              <td className="text-center">
                                <button
                                  className="btn btn-sm btn-primary"
                                  style={{ transition: "transform 0.2s" }}
                                  onClick={() =>
                                    alert(
                                      `View history for Product ID: ${item.product_id} - ${item.product_name}`
                                    )
                                  }
                                  onMouseEnter={(e) =>
                                    (e.currentTarget.style.transform =
                                      "scale(1.1)")
                                  }
                                  onMouseLeave={(e) =>
                                    (e.currentTarget.style.transform =
                                      "scale(1)")
                                  }
                                >
                                  View History
                                </button>
                              </td>
                            </tr>
                          );
                        })}
                      </tbody>
                    </table>
                  </div>
                </div>

                {/* Right Column - Form */}
                <div className="col-12 col-lg-4">
                  <div className="card shadow-sm p-3">
                    <h5 className="mb-3">Add Stock</h5>
                    <div className="mb-3">
                      <label className="form-label">Product Name</label>
                      <input
                        type="text"
                        className="form-control"
                        value={newProductName}
                        onChange={(e) => setNewProductName(e.target.value)}
                      />
                    </div>
                    <div className="mb-3">
                      <label className="form-label">Quantity</label>
                      <input
                        type="number"
                        className="form-control"
                        value={newProductQty}
                        onChange={(e) => setNewProductQty(e.target.value)}
                      />
                    </div>
                    <button
                      className="btn btn-success w-100"
                      onClick={() => handleAddProduct()}
                    >
                      Submit
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
