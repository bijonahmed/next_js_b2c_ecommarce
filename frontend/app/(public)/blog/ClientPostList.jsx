"use client";

import { useState, useMemo } from "react";
import Link from "next/link";
import usePost from "../../hooks/useBlogPostSearch";

export default function FaqPostPage({ categoryId }) {
  const { postData = [] } = usePost(categoryId);

  const ITEMS_PER_PAGE = 5;

  const [currentPage, setCurrentPage] = useState(1);
  const [isLoading, setIsLoading] = useState(false);

  const totalPages = Math.ceil(postData.length / ITEMS_PER_PAGE);

  const paginatedPosts = useMemo(() => {
    const start = (currentPage - 1) * ITEMS_PER_PAGE;
    return postData.slice(start, start + ITEMS_PER_PAGE);
  }, [postData, currentPage]);

  const handlePageChange = (page) => {
    if (page === currentPage || page < 1 || page > totalPages) return;

    setIsLoading(true);

    setTimeout(() => {
      setCurrentPage(page);
      setIsLoading(false);
      window.scrollTo({ top: 0, behavior: "smooth" });
    }, 500);
  };

  return (
    <div className="ps-page--single" id="about-us">
      <div className="mt-5">
        <div className="container">
          <div className="ps-blog--sidebar">
            <div className="ps-blog__left">

              {/* LOADER */}
              {isLoading ? (
                <div className="text-center my-5">
                  <div className="spinner-border text-warning" role="status">
                    <span className="visually-hidden">Loading...</span>
                  </div>
                </div>
              ) : (
                <>
                  {/* POSTS */}
                  {paginatedPosts.map((post) => (
                    <div
                      key={post.id}
                      className="ps-post ps-post--small-thumbnail"
                    >
                      <div className="ps-post__thumbnail">
                        <Link
                          className="ps-post__overlay"
                          href={`/blog-details/${post.slug}`}
                        />
                        <img
                          loading="lazy"
                          src={
                            post.thumnail_img || "img/blog/grid/1.jpg"
                          }
                          alt={post.name}
                          style={{
                            border: "4px solid #f6c02d",
                            borderRadius: "12px",
                            boxShadow:
                              "0 4px 8px rgba(0,0,0,0.2)",
                          }}
                        />
                      </div>

                      <div className="ps-post__content">
                        <div className="ps-post__top">
                          <Link
                            className="ps-post__title"
                            href={`/blog-details/${post.slug}`}
                          >
                            {post.name}
                          </Link>

                          <p
                            style={{ textAlign: "justify" }}
                            dangerouslySetInnerHTML={{
                              __html: post.description_full,
                            }}
                          />
                        </div>

                        <div className="ps-post__bottom">
                          <p>
                            {post.createdAt}, Post by{" "}
                            <a href="#">{post.vendor}</a>
                          </p>
                        </div>
                      </div>
                    </div>
                  ))}
                </>
              )}

              {/* PAGINATION */}
              {totalPages > 1 && (
                <div className="ps-pagination">
                  <ul className="pagination">

                    {/* PREV */}
                    <li
                      className={
                        currentPage === 1 ? "disabled" : ""
                      }
                    >
                      <a
                        href="#"
                        onClick={(e) => {
                          e.preventDefault();
                          handlePageChange(currentPage - 1);
                        }}
                      >
                        Prev
                      </a>
                    </li>

                    {/* PAGE NUMBERS */}
                    {[...Array(totalPages)].map((_, i) => (
                      <li
                        key={i}
                        className={
                          currentPage === i + 1
                            ? "active"
                            : ""
                        }
                      >
                        <a
                          href="#"
                          onClick={(e) => {
                            e.preventDefault();
                            handlePageChange(i + 1);
                          }}
                        >
                          {i + 1}
                        </a>
                      </li>
                    ))}

                    {/* NEXT */}
                    <li
                      className={
                        currentPage === totalPages
                          ? "disabled"
                          : ""
                      }
                    >
                      <a
                        href="#"
                        onClick={(e) => {
                          e.preventDefault();
                          handlePageChange(currentPage + 1);
                        }}
                      >
                        Next Page{" "}
                        <i className="icon-chevron-right" />
                      </a>
                    </li>

                  </ul>
                </div>
              )}

            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
