import Link from "next/link";
const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";
export const metadata = {
  title: "Policy- Bir E-Commerce",
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
    title: "Policy - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/policy`,
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
    canonical: `${baseUrl}/policy`,
  },
};

const lastUpdated = "2025-10-27";
const effectiveDate = "2026-10-27"; // as provided in the source
const contact = "01329683606";

export default function PolicyPage() {
  return (
    <div className="ps-page--single" id="contact-us">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>Policy</li>
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
              Privacy Policy for Bir E-Commerce
            </h1>
            <p className="text-muted small mb-0 d-none">
              Last updated: <time dateTime={lastUpdated}>{lastUpdated}</time>
            </p>
          </header>

          <section className="text-secondary lh-lg">
            <p className="text-justify">
              Welcome to <strong>Bir E-Commerce</strong> ("us", "we", or "our").
              This page informs you of our policies regarding the collection,
              use, and disclosure of Personal Information we receive from users
              of the site.
            </p>

            <p>
              We use your Personal Information only for providing and improving
              the site. By using the site, you agree to the collection and use
              of information by this policy.
            </p>

            <h2 className="h5 fw-semibold mt-4">
              Information Collection and Use
            </h2>
            <p>
              While using our site, we may ask you to provide us with certain
              personally identifiable information that can be used to contact or
              identify you. Personally identifiable information may include but
              is not limited to your name, email address, postal address, and
              phone number ("Personal Information").
            </p>

            <h2 className="h5 fw-semibold mt-4">Log Data</h2>
            <p>
              Like many site operators, we collect information that your browser
              sends whenever you visit our site ("Log Data"). This Log Data may
              include information such as your computer's Internet Protocol
              ("IP") address, browser type, browser version, the pages of our
              site that you visit, the time and date of your visit, the time
              spent on those pages, and other statistics.
            </p>

            <h2 className="h5 fw-semibold mt-4">Cookies</h2>
            <p>
              Cookies are files with small amounts of data, which may include an
              anonymous unique identifier. Cookies are sent to your browser from
              a website and stored on your computer's hard drive.
            </p>
            <p>
              Like many sites, we use "cookies" to collect information. You can
              instruct your browser to refuse all cookies or to indicate when a
              cookie is being sent. However, if you do not accept cookies, you
              may not be able to use some portions of our site.
            </p>

            <h2 className="h5 fw-semibold mt-4">Security</h2>
            <p>
              The security of your Personal Information is important to us, but
              remember that no method of transmission over the Internet, or
              method of electronic storage, is 100% secure. While we strive to
              use commercially acceptable means to protect your Personal
              Information, we cannot guarantee its absolute security.
            </p>

            <h2 className="h5 fw-semibold mt-4">
              Changes to This Privacy Policy
            </h2>
            <p>
              This Privacy Policy is effective as of{" "}
              <time dateTime={effectiveDate}>{effectiveDate}</time> and will
              remain in effect except concerning any changes in its provisions
              in the future, which will be in effect immediately after being
              posted on this page.
            </p>
            <p>
              We reserve the right to update or change our Privacy Policy at any
              time, and you should check this Privacy Policy periodically. Your
              continued use of the service after we post any modifications to
              the Privacy Policy on this page will constitute your
              acknowledgment of the modifications and your consent to abide by
              and be bound by the modified Privacy Policy.
            </p>
            <p>
              If we make any material changes to this Privacy Policy, we will
              notify you either through the email address you have provided us
              or by placing a prominent notice on our website.
            </p>

            <h2 className="h5 fw-semibold mt-4">Contact Us</h2>
            <p>
              If you have any questions about this Privacy Policy, please
              contact us at <a href={`tel:${contact}`}>{contact}</a>.
            </p>
          </section>
        </main>
      </div>
    </div>
  );
}
