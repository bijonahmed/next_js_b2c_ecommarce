import Link from "next/link";

const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";
export const metadata = {
  title: "About us - Bir E-Commerce",
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
    title: "Checkout - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/about-us`,
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
    canonical: `${baseUrl}/about-us`,
  },
};
export default function AboutPage() {
  return (
    <div>
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>About us</li>
          </ul>
        </div>
      </div>
      <div className="ps-page--single" id="about-us">
        <img
          loading="lazy"
          src="/frontend_theme/img/bg/about-us.jpg"
          alt="image"
        />
        <div className="ps-about-intro">
          <div className="container">
            <div className="container ps-section__header">
              <h3>About Bir Group Holdings</h3>
              <p style={{ textAlign: "justify" }}>
                <strong>Vision Statement:</strong> Our vision is to become one
                of Bangladesh’s major diversified distribution and manufacturing
                companies. We plan on reaching our vision by selling quality
                products nationally and taking full responsibility for the
                products that we distribute and manufacture to our retailers and
                customers. Our goal in that process is also to treat all
                retailers and customers fairly and equally so that they continue
                to purchase our products.
              </p>

              <p style={{ textAlign: "justify" }}>
                <strong>Mission Statement:</strong> Our mission is to become a
                major diversified distribution & manufacturing company. The
                company pursues this mission by utilizing the following
                approaches: capitalizing on the considerable growth potential of
                the company’s existing brands and products in the ever-growing
                market; introducing new products into the existing networks and
                markets; and expanding the distribution of Bir Group’s existing
                brands into the domestic markets. These are the approaches we
                utilize to continue growing every year.
              </p>

             
                <span style={{ fontSize: "19px" }}>
                  <strong>Corporate Objectives:</strong>
                </span>
                <ul>
                  <li>Maintaining equality in a competitive workspace</li>
                  <li>Being open-minded to concepts and advice</li>
                  <li>Taking calculated risks in order to grow and prosper</li>
                  <li>Ethically conducting any and all business activities</li>
                </ul>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
