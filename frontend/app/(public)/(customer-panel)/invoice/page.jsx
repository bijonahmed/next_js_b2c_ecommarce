"use client"; // required for client components
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAuth } from "../../../context/AuthContext"; // Adjust the path as necessary
import Sidebar from "../customer-dashboard/sidebar";
import { useState } from "react";

export default function InvoicePage() {
  const router = useRouter(); // ✅ Next.js Router

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
              <div className="ps-section__right">
                <div className="ps-section--account-setting">
                  <div className="ps-section__header">
                    <h3>Invoices</h3>
                  </div>
                  <div className="ps-section__content">
                    <div className="table-responsive">
                      <table className="table ps-table ps-table--invoices">
                        <thead>
                          <tr>
                            <th>Id</th>
                            <th>Title</th>
                            <th>Date</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <Link href="/invoice/500884010">500884010</Link>
                            </td>
                            <td>
                              <Link href="/product/1">
                                Marshall Kilburn Portable Wireless Speaker
                              </Link>
                            </td>
                            <td>20-1-2020</td>
                            <td>42.99</td>
                            <td>Successful delivery</td>
                            <td>
                              <Link
                                href="/invoice/500884010"
                                className="btn btn-warning btn-lg text-white fw-semibold"
                              >
                                View Invoice
                              </Link>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    
    </main>
  );
}
