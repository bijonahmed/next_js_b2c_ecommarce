"use client";

import React, { useState, useEffect } from "react";
import { useAuth } from "../../../../context/AuthContext";
import { usePathname, useRouter } from "next/navigation";
import Link from "next/link";
import toast, { Toaster } from "react-hot-toast";
import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";
import useCategories from "../../../../hooks/useCategories";

export default function EditProductForm({ id }) {
  const { token, permissions } = useAuth();
  const { categoryData } = useCategories();
  const router = useRouter();
  const pathname = usePathname();
  const [loading, setLoading] = useState(true);
  const [errors, setErrors] = useState({});
  const [subcategoryList, setSubCategories] = useState([]);
  const [attributes, setAttributes] = useState([
    { attributeName: "", quantity: "", sellingPrice: "" },
  ]);
  const handleAttrChange = (index, field, value) => {
    const newAttributes = [...attributes];
    newAttributes[index][field] = value;
    setAttributes(newAttributes);
  };

  const addRow = () => {
    setAttributes([
      ...attributes,
      { attributeName: "", quantity: "", sellingPrice: "" },
    ]);
  };

  const removeRow = (index) => {
    const newAttributes = attributes.filter((_, i) => i !== index);
    setAttributes(newAttributes);
  };
  // Set into state

  const [formData, setFormData] = useState({
    id: id,
    name: "",
    meta_title: "",
    meta_description: "",
    meta_keyword: "",
    categoryId: "",
    subcategoryId: "",
    price: "",
    discount_price: "",
    stock_qty: "",
    supplier_name: "",
    status: 1, // 1=Active, 0=Inactive
    description_full: "",
    files: null, // main image
    gallery: [], // multiple images
  });

  // Fetch product data
  useEffect(() => {
    const fetchProduct = async () => {
      try {
        setLoading(true);
        const res = await fetch(
          `${process.env.NEXT_PUBLIC_API_BASE}/product/productrow/${id}`,
          { headers: { Authorization: `Bearer ${token}` } }
        );
        const data = await res.json();
        const p = data?.data || {};
        const galleryData = data?.galleryData || [];
        const subCategory = data?.subCategory || [];
        const chkAttrbute = data?.chkAttrbute || [];
        setSubCategories(subCategory);
        setAttributes(chkAttrbute);

        setFormData({
          id: p.id,
          name: p.name ?? "",
          meta_title: p.meta_title ?? p.name,
          meta_description: p.meta_description ?? "",
          meta_keyword: p.meta_keyword ?? "",
          categoryId: p.categoryId ?? "",
          subcategoryId: p.subcategoryId ?? "",
          price: p.price ?? "",
          discount_price: p.discount_price ?? "",
          stock_qty: p.stock_qty ?? "",
          status: p.status ?? 1,
          description_full: p.description_full ?? "",
          supplier_name: p.supplier_name ?? "",
          files: p.convert_thumbnail_url ?? null,
          gallery: galleryData,
        });
      } catch (err) {
        console.error(err);
      } finally {
        setLoading(false);
      }
    };

    fetchProduct();
  }, [id]);

  const title = `Product [${id}]`;
  useEffect(() => {
    document.title = title;
  }, [title]);

  // Handle main category change & fetch subcategories
  const handleMainCategoryChange = async (e) => {
    const selectedId = e.target.value;
    setFormData({ ...formData, categoryId: selectedId, subcategoryId: "" });
    if (!selectedId) return;

    try {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_API_BASE}/product-category/checkSubcategory`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
          body: JSON.stringify({ category_id: selectedId }),
        }
      );
      const data = await res.json();
      if (data) setSubCategories(data.data);
    } catch (err) {
      console.error("Fetch subcategories error:", err);
    }
  };

  const handleChange = (e) => {
    const { name, value, files } = e.target;

    if (files) {
      if (name === "files") {
        // Main thumbnail (you can keep 300x300 validation here if needed)
        const file = files[0];
        const img = new Image();
        img.src = URL.createObjectURL(file);

        img.onload = () => {
          if (img.width !== 300 || img.height !== 300) {
            alert("Thumbnail image must be exactly 300px by 300px!");
            e.target.value = ""; // reset input
            return;
          }
          setFormData({ ...formData, files: file });
        };
      } else if (name === "gallery") {
        // Multiple gallery images
        const validFiles = [];
        let allValid = true;

        Array.from(files).forEach((file) => {
          const img = new Image();
          img.src = URL.createObjectURL(file);

          img.onload = () => {
            if (img.width !== 600 || img.height !== 600) {
              allValid = false;
              alert(
                `Gallery image "${file.name}" must be exactly 600px by 600px!`
              );
            } else {
              validFiles.push(file);
            }

            // After all images are processed, update state
            if (validFiles.length === files.length && allValid) {
              setFormData({ ...formData, gallery: validFiles });
            }
          };
        });
      }
    } else {
      setFormData({ ...formData, [name]: value });
    }
  };

  // Submit handler
  const handleSubmit = async (e) => {
    e.preventDefault();
    const payload = new FormData();
    Object.entries(formData).forEach(([key, value]) => {
      if (key === "gallery") {
        Array.from(value).forEach((file) => payload.append("gallery[]", file));
      } else if (value !== null) {
        payload.append(key, value);
      }
    });

    payload.append("id", id);
    payload.append("attributes", JSON.stringify(attributes));

    try {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_API_BASE}/product/update`,
        {
          method: "POST",
          headers: { Authorization: `Bearer ${token}` },
          body: payload,
        }
      );
      const data = await res.json();
      if (res.ok) {
        toast.success("Product updated successfully ✅");
        router.push("/product");
      } else if (data.errors) {
        setErrors(data.errors);
        toast.error(Object.values(data.errors).flat().join("\n"), {
          style: { whiteSpace: "pre-line" },
        });
      } else {
        toast.error(data.message || "Something went wrong!");
      }
    } catch (err) {
      console.error(err);
      toast.error("Network or server error!");
    }
  };

  if (!permissions.includes("edit product")) {
    router.replace("/dashboard");
    return null;
  }

  const allowOnlyNumbers = (e) => {
    const val = e.target.value;
    if (!/^\d*$/.test(val)) {
      e.target.value = val.replace(/\D/g, ""); // remove all non-digit characters
    }
  };

  return (
    <main className="app-main" id="main" tabIndex={-1}>
      <Toaster position="top-right" />
      <div className="container-fluid">
        <div className="row mt-3">
          <div className="col-sm-8">
            <h3 className="mb-0">
              {title}&nbsp;
              <span className="text-success">[{formData.supplier_name}]</span>
            </h3>
          </div>
          <div className="col-sm-3">
            <ol className="breadcrumb float-sm-end">
              <li className="breadcrumb-item">
                <Link href="/dashboard">Home</Link>
              </li>
              <li className="breadcrumb-item active" aria-current="page">
                <a
                  href="#"
                  onClick={(e) => {
                    e.preventDefault();
                    router.back();
                  }}
                  className="text-blue-600 hover:underline"
                >
                  ← Back
                </a>
              </li>
            </ol>
          </div>
        </div>
        <div className="card card-primary card-outline mb-4">
          {loading ? (
            <div
              className="d-flex justify-content-center align-items-center"
              style={{ height: "200px" }}
            >
              <div className="spinner-border text-primary" role="status">
                <span className="visually-hidden">Loading...</span>
              </div>
            </div>
          ) : null}

          <form onSubmit={handleSubmit}>
            <div className="card-body">
              <div className="row g-3">
                {/* Column 1 */}
                <div className="col-md-6">
                  <div className="mb-2">
                    <label className="form-label">Name</label>
                    <input
                      type="text"
                      name="name"
                      className={`form-control ${
                        errors.name ? "is-invalid" : ""
                      }`}
                      value={formData.name}
                      onChange={handleChange}
                    />
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Meta Title</label>
                    <input
                      type="text"
                      name="meta_title"
                      className="form-control"
                      value={formData.meta_title}
                      onChange={handleChange}
                    />
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Meta Keyword</label>
                    <input
                      type="text"
                      name="meta_keyword"
                      className="form-control"
                      value={formData.meta_keyword}
                      onChange={handleChange}
                    />
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Meta Description</label>
                    <textarea
                      name="meta_description"
                      className="form-control"
                      rows={3}
                      value={formData.meta_description}
                      onChange={handleChange}
                    />
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Regular Price</label>
                    <input
                      type="text"
                      name="price"
                      className="form-control"
                      value={formData.price}
                      onChange={handleChange}
                      onInput={allowOnlyNumbers}
                    />
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Discount Price</label>
                    <input
                      type="text"
                      name="discount_price"
                      className="form-control"
                      value={formData.discount_price}
                      onChange={handleChange}
                      onInput={allowOnlyNumbers}
                    />
                  </div>

                  <div className="mb-2">
                    <label className="form-label">stock_qty</label>
                    <input
                      type="text"
                      name="stock_qty"
                      className="form-control"
                      value={formData.stock_qty}
                      onChange={handleChange}
                      onInput={allowOnlyNumbers}
                    />
                  </div>
                </div>

                {/* Column 2 */}
                <div className="col-md-6">
                  <div className="mb-2">
                    <label className="form-label">Category</label>
                    <select
                      className="form-select"
                      value={formData.categoryId}
                      onChange={handleMainCategoryChange}
                    >
                      <option value="">-- Select Category --</option>
                      {categoryData.map((cat) => (
                        <option key={cat.id} value={cat.id}>
                          {cat.name}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Subcategory</label>
                    <select
                      className="form-select"
                      value={formData.subcategoryId}
                      onChange={(e) =>
                        setFormData({
                          ...formData,
                          subcategoryId: e.target.value,
                        })
                      }
                    >
                      <option value="">-- Select Subcategory --</option>
                      {subcategoryList.map((sub) => (
                        <option key={sub.id} value={sub.id}>
                          {sub.name}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div className="mb-2">
                    <label className="form-label">Status</label>
                    <select
                      name="status"
                      className="form-select"
                      value={formData.status}
                      onChange={handleChange}
                    >
                      <option value={1}>Active</option>
                      <option value={0}>Inactive</option>
                    </select>
                  </div>

                  <div className="mb-2 mt-2">
                    <label className="form-label">
                      Thumbnail Image <span className="text-danger">*</span>{" "}
                      (300px x 300px)
                    </label>
                    <input
                      type="file"
                      name="files"
                      accept="image/*"
                      onChange={handleChange}
                      className="form-control"
                    />
                    {formData.files &&
                      (typeof formData.files === "string" ||
                      formData.files instanceof File ? (
                        <img
                          src={
                            typeof formData.files === "string"
                              ? formData.files
                              : URL.createObjectURL(formData.files)
                          }
                          alt="Preview"
                          className="img-thumbnail mt-2"
                          style={{ maxHeight: "150px" }}
                        />
                      ) : null)}
                  </div>

                  <div className="mb-3 mt-4">
                    Gallery Images <span className="text-danger">*</span> (600px
                    x 600px)
                    <input
                      type="file"
                      name="gallery"
                      multiple
                      accept="image/*"
                      onChange={(e) => {
                        const filesArray = Array.from(e.target.files);
                        const validFiles = [];
                        let allValid = true;

                        filesArray.forEach((file, idx) => {
                          const img = new Image();
                          img.src = URL.createObjectURL(file);
                          img.onload = () => {
                            if (img.width !== 600 || img.height !== 600) {
                              alert(
                                `"${file.name}" must be exactly 600px x 600px!`
                              );
                              allValid = false;
                            } else {
                              validFiles.push(file);
                            }

                            if (idx === filesArray.length - 1) {
                              if (allValid) {
                                setFormData((prev) => ({
                                  ...prev,
                                  gallery: [...prev.gallery, ...validFiles],
                                }));
                              } else {
                                e.target.value = "";
                              }
                            }
                          };
                        });
                      }}
                      className="form-control"
                    />
                    <div className="d-flex flex-wrap gap-2 mt-2">
                      {formData.gallery.map((file, index) => (
                        <div
                          key={index}
                          className="position-relative me-2 mb-2"
                        >
                          <img
                            src={
                              file.gallery_image_url // existing DB image
                                ? file.gallery_image_url
                                : URL.createObjectURL(file) // newly uploaded file
                            }
                            alt={`preview-${index}`}
                            style={{
                              width: "100px",
                              height: "100px",
                              objectFit: "cover",
                            }}
                            className="border rounded"
                          />

                          {/* Remove Button */}
                          <button
                            type="button"
                            className="btn btn-danger btn-sm position-absolute"
                            style={{
                              top: "-5px",
                              right: "-5px",
                              borderRadius: "50%",
                              padding: "0 6px",
                              lineHeight: "1",
                            }}
                            onClick={async () => {
                              const isFromDatabase = file.id !== undefined;

                              if (isFromDatabase) {
                                if (
                                  confirm(
                                    "Are you sure you want to delete this image from server?"
                                  )
                                ) {
                                  try {
                                    const response = await fetch(
                                      `${process.env.NEXT_PUBLIC_API_BASE}/product/gallery-delete`,
                                      {
                                        method: "POST",
                                        headers: {
                                          "Content-Type": "application/json",
                                          Authorization: `Bearer ${token}`,
                                        },
                                        body: JSON.stringify({
                                          image_id: file.id, // send ID to delete
                                          product_id: file.product_id,
                                        }),
                                      }
                                    );
                                    const resData = await response.json();
                                    if (resData.status) {
                                      alert("Image deleted successfully!");
                                      setFormData((prev) => ({
                                        ...prev,
                                        gallery: prev.gallery.filter(
                                          (_, i) => i !== index
                                        ),
                                      }));
                                    } else {
                                      alert("Failed to delete image!");
                                    }
                                  } catch (err) {
                                    console.error("Delete failed:", err);
                                  }
                                }
                              } else {
                                // Remove locally for newly uploaded files
                                setFormData((prev) => ({
                                  ...prev,
                                  gallery: prev.gallery.filter(
                                    (_, i) => i !== index
                                  ),
                                }));
                              }
                            }}
                          >
                            ×
                          </button>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>

                <div className="mb-2">
                  <label className="form-label">Full Description</label>
                  <CKEditor
                    editor={ClassicEditor}
                    key={formData.id}
                    data={formData.description_full}
                    onChange={(event, editor) =>
                      setFormData({
                        ...formData,
                        description_full: editor.getData(),
                      })
                    }
                  />
                </div>

                {/* Add Attribue */}

                <div className="container mt-4">
                  <div className="mt-4">
                    <div className="d-flex justify-content-between align-items-center mb-2">
                      <h6 className="mb-0">Product Attributes</h6>
                      <button
                        type="button"
                        className="btn btn-success btn-sm"
                        onClick={addRow}
                      >
                        <i className="bi bi-plus-lg"></i> Add Row
                      </button>
                    </div>

                    <table className="table table-bordered table-striped align-middle">
                      <thead className="table-dark">
                        <tr>
                          <th scope="col">Attribute Name</th>
                          <th scope="col">Quantity</th>
                          <th scope="col">Selling Price</th>
                          <th scope="col" className="text-center">
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        {attributes.map((attr, index) => (
                          <tr key={index}>
                            <td>
                              <input
                                type="text"
                                className="form-control"
                                value={attr.attributeName}
                                onChange={(e) =>
                                  handleAttrChange(
                                    index,
                                    "attributeName",
                                    e.target.value
                                  )
                                }
                                placeholder="Attribute Name"
                              />
                            </td>
                            <td>
                              <input
                                type="text"
                                className="form-control"
                                onInput={allowOnlyNumbers}
                                value={attr.quantity}
                                onChange={(e) =>
                                  handleAttrChange(
                                    index,
                                    "quantity",
                                    e.target.value
                                  )
                                }
                                placeholder="Quantity"
                              />
                            </td>
                            <td>
                              <input
                                type="text"
                                className="form-control"
                                value={attr.sellingPrice}
                                onChange={(e) =>
                                  handleAttrChange(
                                    index,
                                    "sellingPrice",
                                    e.target.value
                                  )
                                }
                                onInput={allowOnlyNumbers}
                                placeholder="Selling Price"
                              />
                            </td>
                            <td className="text-center">
                              <button
                                type="button"
                                className="btn btn-danger btn-sm"
                                onClick={() => removeRow(index)}
                                disabled={attributes.length === 1} // prevent removing last row
                                title="Remove Attribute"
                              >
                                <i className="bi bi-x-lg"></i>
                              </button>
                            </td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                </div>
                {/* End */}

                <div className="mb-2 mt-4">
                  <button type="submit" className="btn btn-primary w-100">
                    Submit
                  </button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </main>
  );
}
