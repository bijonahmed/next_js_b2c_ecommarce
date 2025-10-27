import Link from "next/link";
const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";
export const metadata = {
  title: "Terms- Bir E-Commerce",
  description: "Securely complete your order and payment on Bir E-Commerce.",
  keywords: [
    "checkout",
    "payment",
    "online shopping",
    "bir e-commerce",
    "order summary",
    "secure checkout",
  ],
  openGraph: {
    title: "Return - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/terms`,
    siteName: "Bir E-Commerce",
    images: [
      {
        url: "/og-image-checkout.jpg",
        width: 1200,
        height: 630,
        alt: "Checkout Page Preview - Bir E-Commerce",
      },
    ],
    type: "website",
  },
  alternates: {
    canonical: `${baseUrl}/terms`,
  },
};

const lastUpdated = "2025-10-27";
const effectiveDate = "2026-10-27"; // as provided in the source
const contact = "01329683606";

export default function ContactPage() {
  return (
    <div className="ps-page--single" id="contact-us">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>Terms and condition</li>
          </ul>
        </div>
      </div>

      <div className="container py-5 px-3 bg-light">
        <main
          className="bg-white shadow-sm rounded-3 p-5"
          style={{ fontSize: "18px" }}
        >
          <header className="mb-4">
            <h1 className="h3 fw-bold text-dark">
              Terms and Conditions for Bir E-Commerce
            </h1>
            <p className="text-muted small mb-0">
              Last updated: <time dateTime={lastUpdated}>{lastUpdated}</time>
            </p>
          </header>

          <section className="text-secondary lh-lg">
            <p>
              Please read these <strong>Terms and Conditions</strong> ("Terms",
              "Terms and Conditions") carefully before using the website (the
              "Service") operated by Bir E-Commerce ("us", "we", or "our").
            </p>

            <h2 className="h5 fw-semibold mt-4">1. Acceptance of Terms</h2>
            <p>
              By accessing or using the Service, you agree to be bound by these
              Terms. If you disagree with any part of the terms, then you may
              not access the Service.
            </p>

            <h2 className="h5 fw-semibold mt-4">2. Accounts</h2>
            <p>
              When you create an account with us, you must provide accurate and
              complete information. You are responsible for maintaining the
              confidentiality of your account and password. You agree to accept
              responsibility for all activities that occur under your account.
            </p>

            <h2 className="h5 fw-semibold mt-4">3. Product Information</h2>
            <p>
              We make every effort to display as accurately as possible the
              colors, features, specifications, and details of the products
              available on our website. However, we do not guarantee that the
              colors, features, specifications, and details of the products will
              be accurate, complete, reliable, current, or free of other errors.
            </p>

            <h2 className="h5 fw-semibold mt-4">4. Pricing and Payment</h2>
            <p>
              Prices for products are subject to change without notice. We
              reserve the right at any time to modify or discontinue the Service
              (or any part or content thereof) without notice at any time. We
              shall not be liable to you or to any third-party for any
              modification, price change, suspension, or discontinuance of the
              Service.
            </p>

            <h2 className="h5 fw-semibold mt-4">5. Shipping and Delivery</h2>
            <p>
              Our aim is to ship orders promptly; however, delivery times may
              vary. We are not liable for delays in shipping or delivery due to
              force majeure events or other reasons beyond our reasonable
              control.
            </p>

            <h2 className="h5 fw-semibold mt-4">6. Returns and Refunds</h2>
            <p>
              Please review our Return Policy posted on the website for
              information on returns and refunds.
            </p>

            <h2 className="h5 fw-semibold mt-4">7. Intellectual Property</h2>
            <p>
              The Service and its original content, features, and functionality
              are and will remain the exclusive property of Bir E-Commerce and
              its licensors.
            </p>

            <h2 className="h5 fw-semibold mt-4">8. Links to Other Websites</h2>
            <p>
              Our Service may contain links to third-party websites or services
              that are not owned or controlled by Bir E-Commerce. Bir E-Commerce
              has no control over and assumes no responsibility for the content,
              privacy policies, or practices of any third-party websites or
              services.
            </p>

            <h2 className="h5 fw-semibold mt-4">9. Governing Law</h2>
            <p>
              These Terms shall be governed and construed in accordance with the
              laws of country, without regard to its conflict of law provisions.
            </p>

            <h2 className="h5 fw-semibold mt-4">10. Changes</h2>
            <p>
              We reserve the right, at our sole discretion, to modify or replace
              these Terms at any time. If a revision is material, we will try to
              provide at least 30 days' notice prior to any new terms taking
              effect. What constitutes a material change will be determined at
              our sole discretion.
            </p>

            <h2 className="h5 fw-semibold mt-4">Contact Us</h2>
            <p>
              If you have any questions about these Terms, please contact us at{" "}
              <a href={`tel:${contact}`}>{contact}</a>.
            </p>
          </section>
        </main>
      </div>
    </div>
  );
}
