"use client";

import React, { useState, useEffect } from "react";
import { useAuth } from "../../../../context/AuthContext";
import { usePathname, useRouter } from "next/navigation";
import Link from "next/link";
import toast, { Toaster } from "react-hot-toast";
import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";
import useCategories from "../../../../hooks/useCategories";
import "../../../../components/styles/invoice.css";
import "../../../../components/styles/orderStatus.css";
import getOrderStatusList from "../../../../hooks/orderStatusList";

export default function EditProductForm({ id }) {
  const { token, permissions } = useAuth();
  const { categoryData } = useCategories();
  const router = useRouter();
  const pathname = usePathname();
  const [loading, setLoading] = useState(false);
  const [errors, setErrors] = useState({});
  const [invoice, setInvoice] = useState("");
  const [orderHistory, setOrderHistory] = useState([]);
  const [updateStatus, setUpdateStatus] = useState("");
  const [updateBy, setUpdateBy] = useState("");
  const { ordersStsData } = getOrderStatusList();

  const handlePrint = () => {
    const printContents = document.getElementById("printArea").innerHTML;
    const originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;
    window.print();
    document.body.innerHTML = originalContents;
    window.location.reload();
  };

  const fetchInvoice = async () => {
    try {
      setLoading(true);
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_API_BASE}/customer/getOrderCustomer?id=${id}`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      const data = await res.json();
      if (res.ok) {
        //console.log("Invoice updateBy:", data.data.updateBy);

        setInvoice(data.data.orderRow);
        setUpdateStatus(data.data.orderRow.order_status);
        setUpdateBy(data.data.updateBy);
        setOrderHistory(data.data.orderHistory);
      } else {
        console.error("Auth error:", data.message);
      }
    } catch (err) {
      console.error("API error:", err);
    } finally {
      setLoading(false);
    }
  };
  // Set into state

  const title = `Order ID: [${id}]`;
  useEffect(() => {
    document.title = title;
  }, [title]);

  useEffect(() => {
    fetchInvoice();
  }, [id]);
  // Submit handler
  const handleStatusUpdate = async (e) => {
    e.preventDefault();

    if (!updateStatus) {
      toast.error("Please select a status!");
      return;
    }

    try {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_API_BASE}/orders/orderUpdate`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json", // <-- REQUIRED
            Authorization: `Bearer ${token}`,
          },
          body: JSON.stringify({
            id: invoice.id,
            status: updateStatus,
          }),
        }
      );

      const data = await res.json();

      if (data.success) {
        toast.success(
          `Status updated successfully!\nOrder ID: ${invoice.orderId}`
        );
        router.push("/order");
      } else {
        toast.error("Failed to update!");
      }
    } catch (error) {
      toast.error("Something went wrong!");
    }
  };

  if (!permissions.includes("edit order")) {
    router.replace("/dashboard");
    return null;
  }

  const toUpperSafe = (text) => (text ? text.toUpperCase() : "");
  const totalAmount = orderHistory.reduce((sum, order) => {
    return sum + order.qty * order.price;
  }, 0);

  return (
    <main className="app-main" id="main" tabIndex={-1}>
      <Toaster position="top-right" />
      <div className="container-fluid">
        <div className="row mt-3">
          <div className="col-sm-8">
            <h3 className="mb-0">Order ID:{invoice.orderId}&nbsp;</h3>
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
          <div className="invoice-container mt-5" id="printArea">
            {/* start */}
            <div>
              <h1>INVOICE</h1>
              <table className="info-table">
                <tbody>
                  <tr>
                    <td>
                      <strong>Order ID:</strong> {invoice.orderId}
                    </td>
                    <td>
                      <strong>Date:&nbsp;</strong>
                      {invoice.order_date}
                    </td>
                  </tr>

                  <tr>
                    <td>
                      <strong>Shipping Phone:</strong> {invoice.shipping_phone}
                    </td>
                    <td>
                      <strong>Status:</strong> {invoice.status_name}
                    </td>
                  </tr>

                  <tr>
                    <td colSpan="2">
                      <strong>Payment Method:</strong>&nbsp;
                      {toUpperSafe(invoice?.paymentMethod)}
                      {/* If Bkash then show details */}
                    </td>
                  </tr>

                  {/* SHOW ONLY IF PAYMENT METHOD = BKASH */}
                  {invoice.paymentMethod === "bkash" && (
                    <tr>
                      <td>
                        <strong>Bkash Number:</strong> {invoice.bkash_number}
                      </td>
                      <td>
                        <strong>Transaction ID:</strong>{" "}
                        {invoice?.transaction_id ?? ""}
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>

              <hr />
              <br />
              {/* <pre>{JSON.stringify(orderHistory,null,2)}</pre> */}
              <table className="product-table">
                <tbody>
                  <tr>
                    <th>Product Name</th>
                    <th className="text-center">Qty</th>
                    <th className="text-center">Unit Price</th>
                    <th className="text-center">Total</th>
                  </tr>

                  {orderHistory.map((order) => (
                    <tr key={order.id}>
                      <td>{order.product_name || ""} &nbsp;
                        
                        {order.variation_value && (
                        (<b>({order.variation_value})</b>)

                        )}
                        

                        
                        </td>
                      <td className="text-center">{order.qty || ""}</td>
                      <td className="text-center">Tk. {order.price || ""}</td>
                      <td className="text-center">
                        Tk. {order.qty * order.price}{" "}
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>

              <div className="total-section">
                <p>
                  <strong>Subtotal:</strong> Tk. {totalAmount}
                </p>
                <p>
                  <strong>Shipping:</strong> Tk. {invoice.devliery_charge}
                </p>
                <p>
                  <strong>Grand Total:</strong>{" "}
                  <strong>
                    Tk.{" "}
                    {(
                      parseFloat(totalAmount || 0) +
                      parseFloat(invoice.devliery_charge || 0)
                    ).toFixed(2)}
                  </strong>
                </p>
              </div>

              <div className="d-flex justify-content-end">
                <button className="print-btn" onClick={handlePrint}>
                  Print Invoice
                </button>
              </div>
            </div>

            {/* END */}
          </div>

          <div className="d-flex justify-content-center mt-5 mb-4">
            <div className="card row col-6 status-card">
              <div className="card-body text-center">
                <h5 className="mb-3 fw-bold text-primary">
                  Update Order Status
                </h5>
                <form
                  onSubmit={handleStatusUpdate}
                  className="d-inline-flex gap-3"
                >
                  <select
                    className="form-select form-select-lg rounded-pill status-select"
                    value={updateStatus}
                    onChange={(e) => setUpdateStatus(e.target.value)}
                  >
                    <option value="">Select Status</option>
                    {ordersStsData.map((r) => (
                      <option key={r.id} value={r.id}>
                        {r.name}
                      </option>
                    ))}
                  </select>

                  <button
                    type="submit"
                    className="btn btn-warning btn-lg rounded-pill status-btn"
                  >
                    Update
                  </button>
                </form>
                <hr />
                {invoice.orderUpdateDate && (
                  <p className="bg-warning bg-opacity-25 p-2 rounded">
                    Last Update Date: {invoice.orderUpdateDate}, Last Update
                    By:&nbsp;{updateBy}
                  </p>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
