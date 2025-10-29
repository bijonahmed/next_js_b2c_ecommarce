"use client";
import { useParams } from "next/navigation";
import { useEffect, useState } from "react";
import Sidebar from "../../customer-dashboard/sidebar";
import Link from "next/link";


export default function InvoiceDetailPage() {
const { id } = useParams(); // Get invoice ID from URL
const [invoice, setInvoice] = useState(null);

  /*
  useEffect(() => {
    // Example: Fetch from your API
    // Replace with your real endpoint
    fetch(`/api/invoices/${id}`)
      .then((res) => res.json())
      .then((data) => setInvoice(data))
      .catch((err) => console.error(err));
  }, [id]);

  if (!invoice) {
    return <p className="text-center py-5">Loading invoice details...</p>;
  }
    */

  return (
    <main className="ps-page--my-account">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>
              <Link href="/customer-dashboard">Account</Link>
            </li>
            <li>Invoices</li>
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
              <h3 className="mb-4">Invoice Details - #1477777</h3>

              <table className="table table-bordered">
                <tbody>
                  <tr>
                    <th>Invoice ID</th>
                    <td>1477777</td>
                  </tr>
                  <tr>
                    <th>Title</th>
                    <td>Title</td>
                  </tr>
                  <tr>
                    <th>Date</th>
                    <td>Date</td>
                  </tr>
                  <tr>
                    <th>Amount</th>
                    <td>23444</td>
                  </tr>
                  <tr>
                    <th>Status</th>
                    <td>Pending</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
