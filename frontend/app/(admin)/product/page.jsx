"use client"; // Required in Next.js App Router for client-side component

import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { useAuth } from "../../context/AuthContext";
import toast, { Toaster } from "react-hot-toast";
import CustomDataTable from "../../context/CustomDataTable";
import useCategories from "../../hooks/useCategories";
import getSupllierList from "../../hooks/supplierList";

export default function ProductPage() {
  const router = useRouter();
  const { token, permissions } = useAuth();
  const perms = Array.isArray(permissions)
    ? permissions
    : permissions?.split(",") || [];

  const title = "Product List";

  const [search, setSearch] = useState("");
  const [statusFilter, setStatusFilter] = useState("");
  const [supplierId, setSupplierFilter] = useState("");
  const { categoryData } = useCategories();
  const { suppliderData } = getSupllierList();
  const [selectedCategory, setMainCategory] = useState("");
  const [subcategoryId, setSubCategoryFilter] = useState("");
  const [subcategoryList, setSubCategories] = useState([]);
  const [total_records, setTotalRecords] = useState(0);

  const handleMainCategoryChange = async (e) => {
    const selectedId = e.target.value;
    setMainCategory(selectedId);
    if (!selectedId) return;

    try {
      const url = `${process.env.NEXT_PUBLIC_API_BASE}/product-category/checkSubcategory`;
      console.log("URL:" + url);

      const res = await fetch(url, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ category_id: selectedId }),
      });

      if (!res.ok) {
        throw new Error(`HTTP error! status: ${res.status}`);
      }
      const data = await res.json();

      if (data) {
        setSubCategories(data.data);
      }
    } catch (err) {
      console.error("Fetch subcategories error:", err);
    }
  };

  const fetchProducts = async (
    page = 1,
    perPageSize = 100,
    searchQuery = ""
  ) => {
    try {
      const encodedQuery = encodeURIComponent(searchQuery);
      const url = `${process.env.NEXT_PUBLIC_API_BASE}/product/index?page=${page}&pageSize=${perPageSize}
                   &searchQuery=${encodedQuery}&supplierId=${supplierId}&status=${statusFilter}&categoryId=${selectedCategory}&subcategoryId=${subcategoryId}`;
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

  // Delete handler
  const handleDelete = async (id) => {
    if (!confirm("Are you sure you want to delete this product?")) return;
    try {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_API_BASE}/product/delete/${id}`,
        {
          method: "DELETE",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      const result = await res.json();
      if (!res.ok) {
        toast.error(result.message || "Delete failed");
        return;
      }
      toast.error("Unauthorized: You do not have permission to delete");
      // toast.success("Product deleted successfully");
      //setData((prev) => prev.filter((row) => row.id !== id));
    } catch (err) {
      console.error(err);
      toast.error("Something went wrong");
    }
  };

  // DataTable columns
  const columns = [
    {
      name: "Product Name",
      selector: (row) => row.name,
      sortable: true,
    },

    {
      name: "Category Name",
      selector: (row) => row.category_name,
      sortable: true,
    },

    {
      name: "Supplier ",
      selector: (row) => row.supplierName,
      sortable: true,
    },
    {
      name: "Thumbnail Image",
      selector: (row) => row.thumbanil_img, // your field name
      sortable: false,
      cell: (row) =>
        row.thumbanil_img ? (
          <img
            src={row.thumbanil_img}
            alt={row.name || "Thumbnail"}
            style={{
              width: "50px",
              height: "50px",
              objectFit: "cover",
              padding: "8px",
            }} // add padding all sides }}
            className="border rounded"
          />
        ) : null,
    },

    {
      name: "Actions",
      cell: (row) => (
        <div className="d-flex gap-2">
          {perms.includes("edit product") && (
            <button
              className="btn btn-sm btn-primary"
              onClick={() => router.push(`/product/edit/${row.id}`)}
            >
              <i className="bi bi-pencil"></i> Edit
            </button>
          )}

          {perms.includes("delete product") && (
            <button
              className="btn btn-sm btn-danger"
              onClick={() => handleDelete(row.id)}
            >
              <i className="bi bi-trash"></i> Delete
            </button>
          )}

          <button
            className={`btn btn-sm ${
              row.status === 1 ? "btn-success" : "btn-danger"
            }`}
          >
            {row.status === 1 ? (
              <>
                <i className="bi bi-check"></i> Active
              </>
            ) : (
              <>Inactive</>
            )}
          </button>
        </div>
      ),
      ignoreRowClick: true,
    },
  ];
  const customStyles = {
    headCells: {
      style: {
        fontSize: "16px", // font size for header cells
        fontWeight: "600",
      },
    },
    cells: {
      style: {
        fontSize: "16px", // font size for normal cells
      },
    },
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
  return (
    <main className="app-main" id="main" tabIndex={-1}>
      <Toaster position="top-right" />
      <div className="app-content-header">
        <div className="container-fluid">
          <div className="row">
            <div className="col-sm-6">
              <h3 className="mb-0">{title}&nbsp;</h3>
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
                  <div className="col-12 col-md-3 col-lg-3">
                    <input
                      type="text"
                      placeholder="Search name..."
                      className="form-control"
                      value={search}
                      onChange={(e) => setSearch(e.target.value)}
                    />
                  </div>
                  <div className="col-4 col-md-2 col-lg-2">
                    <select
                      className="form-select"
                      onChange={handleMainCategoryChange}
                    >
                      <option value="">-- Select Main Category --</option>
                      {categoryData.map((cat) => (
                        <option key={cat.id} value={cat.id}>
                          {cat.name}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div className="col-4 col-md-2 col-lg-2">
                    <select
                      className="form-select"
                      value={subcategoryId}
                      onChange={(e) => setSubCategoryFilter(e.target.value)}
                    >
                      <option value="">-- Select Subcatgory Category --</option>
                      {subcategoryList.map((cat) => (
                        <option key={cat.id} value={cat.id}>
                          {cat.name}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div className="col-4 col-md-2 col-lg-2">
                    <select
                      className="form-select"
                      value={supplierId}
                      onChange={(e) => setSupplierFilter(e.target.value)}
                    >
                      <option value="">-- Select Supplier --</option>
                      {suppliderData.map((data) => (
                        <option key={data.id} value={data.id}>
                          {data.name}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div className="col-4 col-md-1 col-lg-1">
                    <select
                      className="form-control"
                      value={statusFilter}
                      onChange={(e) => setStatusFilter(e.target.value)}
                    >
                      <option value="">-- Select Status --</option>
                      <option value="1">Active</option>
                      <option value="0">Inactive</option>
                    </select>
                  </div>
                  <div className="col-6 col-md-2 col-lg-2">
                    <button
                      type="button"
                      className="btn btn-outline-secondary w-100"
                      onClick={() => setSearch(search + " ")}
                    >
                      Fetch
                    </button>
                  </div>
                  <div className="col-6 col-md-3 col-lg-1 ms-auto d-none">
                    {perms.includes("create product") && (
                      <button
                        className="btn btn-primary w-100"
                        onClick={() => router.push(`#`)}
                      >
                        Add New
                      </button>
                    )}
                  </div>
                </div>
              </div>
            </div>
            <div className="card-body p-0 mt-2">
              <CustomDataTable
                columns={columns}
                fetchFunction={fetchProducts}
                searchValue={search}
                defaultPerPage={10}
                perPageOptions={[10, 25, 50]}
                customStyles={customStyles}
              />
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
