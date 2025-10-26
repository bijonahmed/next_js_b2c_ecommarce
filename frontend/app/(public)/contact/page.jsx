import Link from "next/link";
export const metadata = {
  title: "Contact",
  description: "Get in touch with us via email or phone.",
  keywords: ["contact", "email", "support"],
  openGraph: {
    title: "Contact - My Website",
    description: "Get in touch with us via email or phone.",
    url: "https://bir-ecommerce.com/contact",
    siteName: "My Website",
    images: [
      {
        url: "/og-image-contact.jpg",
        width: 1200,
        height: 630,
        alt: "Contact Preview",
      },
    ],
    type: "website",
  },
  alternates: {
    canonical: "https://bir-ecommerce.com/contact",
  },
};


export default function ContactPage() {
  return (
    <div className="ps-page--single" id="contact-us">
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>Contact Us</li>
          </ul>
        </div>
      </div>
      <div className="ps-contact-map">
        <div className="container my-4">
          <div
            className="ratio ratio-16x9"
            style={{
              border: "3px solid #FCB800",
              borderRadius: "12px",
              overflow: "hidden",
              transition: "transform 0.3s, box-shadow 0.3s",
              cursor: "pointer",
            }}
          >
            <iframe
              src="https://www.google.com/maps/embed/v1/place?q=6th%20%26%207th%20Floor%2C%20Navana%20Osman%20%40link%2C%20214%2Fd%20Bir%20Uttam%20Mir%20Shawkat%20Sarak%2C%20Dhaka%201208&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"
              style={{ border: 0 }}
              allowFullScreen
              loading="lazy"
              referrerPolicy="no-referrer-when-downgrade"
              title="Bir Group Location"
            ></iframe>
          </div>
        </div>
      </div>

      <div className="ps-contact-form">
        <div className="container">
          <form className="ps-form--contact-us" action="#" method="get">
            <h3>Get In Touch</h3>
            <div className="row">
              <div className="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 ">
                <div className="form-group">
                  <input
                    className="form-control"
                    type="text"
                    placeholder="Name *"
                  />
                </div>
              </div>
              <div className="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 ">
                <div className="form-group">
                  <input
                    className="form-control"
                    type="text"
                    placeholder="Email *"
                  />
                </div>
              </div>
              <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                <div className="form-group">
                  <input
                    className="form-control"
                    type="text"
                    placeholder="Subject *"
                  />
                </div>
              </div>
              <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                <div className="form-group">
                  <textarea
                    className="form-control"
                    rows={5}
                    placeholder="Message"
                    defaultValue={""}
                  />
                </div>
              </div>
            </div>
            <div className="form-group submit">
              <button className="ps-btn">Send message</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
