import BlogDetails from "./blog-details";

const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "http://localhost:3000";

export async function generateMetadata({ params }) {
  const { slug } = params;

  return {
    title: `${slug.replace(/-/g, " ")} - Bir E-Commerce`,
    description: `Explore ${slug.replace(/-/g, " ")} blog on Bir E-Commerce.`,
    openGraph: {
      title: `${slug.replace(/-/g, " ")} - Bir E-Commerce`,
      url: `${baseUrl}/blog-details/${slug}`,
      images: ["/og-image-checkout.jpg"],
    },
    alternates: {
      canonical: `${baseUrl}/blog-details/${slug}`,
    },
  };
}

export default function Page({ params }) {
  const { slug } = params;

  return <BlogDetails slug={slug} />;
}

return <></>;
