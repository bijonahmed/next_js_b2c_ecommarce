"use client";

import { useState } from "react";

const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";
export const metadata = {
  title: "Faq- Bir E-Commerce",
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
    title: "Faq - Bir E-Commerce",
    description: "Securely complete your order and payment on Bir E-Commerce.",
    url: `${baseUrl}/faq`,
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
    canonical: `${baseUrl}/faq`,
  },
};

export default function FAQAccordion() {
  const [activeIndex, setActiveIndex] = useState(null);

  const faqData = [
    {
      question: "What is Bir Group Holdings?",
      answer:
        "Since 2002, Bir Group Holdings has emerged as a diversified trading and manufacturing corporation with substantial market shares in the hardware and tools industry nationwide.",
    },
    {
      question: "Which markets does Bir Group operate in?",
      answer:
        "Bir Group operates in five distinct markets: Hardware and paints, tools, project management products, ceramics/tiles mold, and the automotive & industrial oil lubrication market.",
    },
    {
      question: "What is the vision of Bir Group?",
      answer:
        "Our vision is to become one of Bangladesh’s major diversified distribution and manufacturing companies, selling quality products nationally and treating customers and retailers fairly.",
    },
    {
      question: "What is the mission of Bir Group?",
      answer:
        "Our mission is to grow as a major diversified distribution & manufacturing company by expanding existing brands, introducing new products, and growing market presence every year.",
    },
    {
      question: "What are the corporate objectives of Bir Group?",
      answer:
        "Maintaining equality in a competitive workspace, being open-minded to ideas, taking calculated risks to grow, and ethically conducting all business activities.",
    },
    {
      question: "How does Bir Group ensure product quality?",
      answer:
        "Bir Group ensures product quality through strict quality control, high standards in manufacturing and distribution, and building trust with customers.",
    },
    {
      question: "Where is Bir Group Holdings located?",
      answer:
        "Bir Group Holdings is based in Bangladesh and operates multiple domestic markets through its distribution network.",
    },
    {
      question: "How long has Bir Group been in operation?",
      answer:
        "Bir Group Holdings has been in operation since 2002, steadily growing across multiple sectors over the last two decades.",
    },
    {
      question: "Does Bir Group follow ethical business practices?",
      answer:
        "Yes, Bir Group conducts all its business activities ethically, maintaining transparency and fairness with customers, retailers, and partners.",
    },
    {
      question: "What types of products does Bir Group distribute?",
      answer:
        "Bir Group distributes hardware, paints, tools, project management products, ceramics, tiles, and automotive & industrial oils.",
    },
    {
      question: "How does Bir Group expand its brand reach?",
      answer:
        "By introducing new products into existing networks, expanding distribution channels, and leveraging opportunities in emerging markets.",
    },
    {
      question: "How does Bir Group treat its retailers and customers?",
      answer:
        "Bir Group treats all retailers and customers fairly and equally, ensuring long-term trust and satisfaction.",
    },
  ];

  const toggleAccordion = (index) => {
    setActiveIndex(activeIndex === index ? null : index);
  };

  return (
    <div style={{ maxWidth: "900px", margin: "0 auto", padding: "20px" }}>
      <h1
        style={{ fontSize: "28px", marginBottom: "20px", textAlign: "center" }}
      >
        Frequently Asked Questions
      </h1>
      <div>
        {faqData.map((item, index) => (
          <div
            key={index}
            style={{
              border: "1px solid #ddd",
              borderRadius: "8px",
              marginBottom: "12px",
              overflow: "hidden",
              boxShadow: "0 2px 8px rgba(0,0,0,0.05)",
            }}
          >
            <button
              onClick={() => toggleAccordion(index)}
              style={{
                width: "100%",
                textAlign: "left",
                padding: "15px 20px",
                fontSize: "16px",
                fontWeight: "600",
                backgroundColor:
                  activeIndex === index ? "rgb(252, 184, 0)" : "#f8f9fa",
                color: activeIndex === index ? "#fff" : "#333",
                border: "none",
                cursor: "pointer",
                outline: "none",
              }}
            >
              {item.question}
            </button>
            {activeIndex === index && (
              <div
                style={{
                  padding: "15px 20px",
                  fontSize: "15px",
                  lineHeight: "1.7",
                  backgroundColor: "#fff",
                  color: "#333",
                  textAlign: "justify",
                }}
              >
                {item.answer}
              </div>
            )}
          </div>
        ))}
      </div>
    </div>
  );
}
