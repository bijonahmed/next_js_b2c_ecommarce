import FAQAccordion from "./FAQAccordion";

export const metadata = {
  title: "FAQ - Bir Group Holdings",
  description: "Frequently asked questions about Bir Group Holdings operations, mission, and products.",
  keywords: ["Bir Group Holdings", "FAQ", "mission", "vision", "corporate objectives"],
  openGraph: {
    title: "FAQ - Bir Group Holdings",
    description: "Frequently asked questions about Bir Group Holdings operations, mission, and products.",
    url: "https://birgroup.com/faq",
    siteName: "Bir Group Holdings",
    images: [
      {
        url: "/og-image-faq.jpg",
        width: 1200,
        height: 630,
        alt: "Bir Group FAQ Preview",
      },
    ],
    type: "website",
  },
  alternates: {
    canonical: "https://birgroup.com/faq",
  },
};

export default function FAQPage() {
  return (
    <div className="container my-5">
      <h1 className="mb-4">Frequently Asked Questions</h1>
      <FAQAccordion />
    </div>
  );
}
