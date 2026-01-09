"use client";

import { useEffect, useState } from "react";
import Link from "next/link";

import { useRouter } from "next/navigation";

import Swal from "sweetalert2";

export default function ProductDetailsClient({ slug }) {
  const formattedSlug = slug.replace(/-/g, " ");

  const [loading, setLoading] = useState(false);

  const [postData, setData] = useState("");
  const [relatedPosts, setRelatedPost] = useState([]);
  const router = useRouter();

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const res = await fetch(
          `${process.env.NEXT_PUBLIC_API_BASE}/public/checkedPostRow/${slug}`
        );
        const result = await res.json();

        setData(result.data || "");
        setRelatedPost(result.relatedPost || []);
      } catch (err) {
        console.error("Fetch failed:", err);
      } finally {
        setLoading(false);
      }
    };
    fetchData();
  }, [slug]);

  return (
    <div className="ps-page--simple min-vh-100 py-5">
      {/* Breadcrumb */}
      <div className="ps-breadcrumb">
        <div className="container">
          <ul className="breadcrumb">
            <li>
              <Link href="/">Home</Link>
            </li>
            <li>
              <Link href="/blog">Blog</Link>
            </li>
            <li>{postData.name}</li>
          </ul>
        </div>
      </div>
      <div className="container">
        <div className="row">
          {/* Main Content */}
          <div className="col-lg-9">
            <div className="card border-0 shadow-sm rounded-4">
              <div className="card-body">
                {/* Title */}
                <h1 className="display-5 fw-bold mb-4">{postData?.name}</h1>

                {/* Thumbnail */}
                <div className="mb-4">
                  <img
                    src={postData?.thumnail_img}
                    alt={postData?.name}
                    className="img-fluid rounded-4 shadow-sm"
                  />
                </div>

                {/* Gallery */}
                {postData?.gallery?.length > 0 && (
                  <div className="row g-3 mb-4">
                    {postData.gallery.map((img, idx) => (
                      <div className="col-12 col-md-6" key={idx}>
                        <img
                          src={img}
                          alt={`${postData?.name}-${idx}`}
                          className="img-fluid rounded-4 border shadow-sm"
                        />
                      </div>
                    ))}
                  </div>
                )}

                {/* Description */}
                <div
                  className="mb-4"
                  style={{ textAlign: "justify" }}
                  dangerouslySetInnerHTML={{
                    __html: postData?.description_full,
                  }}
                />
              </div>
            </div>
          </div>

          {/* Right Sidebar – Related Posts */}
          <div className="col-lg-3">
            <div
              className="card border-0 shadow-sm rounded-4 sticky-top"
              style={{ top: "90px" }}
            >
              <div className="card-body">
                <h5 className="fw-bold mb-3">Related Posts</h5>

                {relatedPosts?.map((post, index) => (
                  <div key={index} className="d-flex mb-3">
                    <img
                      src={post.thumnail_img}
                      alt={post.name}
                      className="rounded-3 me-2"
                      width="60"
                      height="60"
                      style={{ objectFit: "cover" }}
                    />
                    <div>
                      <Link
                        href={`/blog-details/${post.slug}`}
                        className="fw-semibold text-dark text-decoration-none"
                      >
                        {post.name}
                      </Link>
                      <small className="d-block text-muted d-none">
                        {post.createdAt}
                      </small>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
