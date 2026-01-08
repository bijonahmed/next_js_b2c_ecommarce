"use client";

import Link from "next/link";
import usePost from "../../hooks/useBlogPostSearch";

export default function FaqPostPage({ categoryId }) {
  const { postData } = usePost(categoryId);

  return (
    <div>
      <div>
        {/* ==<pre>{JSON.stringify(postData,null,2)}</pre>== */}
        <div className="ps-page--single" id="about-us">
          <div className="mt-5">
            <div className="container">
              <div className="container ps-section__header">
                {/* start */}
                <div className="ps-blog--sidebar">
                  <div className="ps-blog__left">
                    {postData.map((post) => (
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
                            src={post.thumnail_img || "img/blog/grid/1.jpg"}
                            alt={post.name}
                            style={{
                              border: "4px solid #f6c02d", // blue border
                              borderRadius: "12px", // rounded corners
                              boxShadow: "0 4px 8px rgba(0,0,0,0.2)", // subtle shadow
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
                              dangerouslySetInnerHTML={{
                                __html: post.description_full,
                              }}
                            ></p>
                          </div>

                          <div className="ps-post__bottom">
                            <p>
                              {post.createdAt},&nbsp; Post by{" "}
                              <a href="#">{post.vendor}</a>
                            </p>
                          </div>
                        </div>
                      </div>
                    ))}

                    <div className="ps-pagination">
                      <ul className="pagination">
                        <li className="active">
                          <a href="#">1</a>
                        </li>
                        <li>
                          <a href="#">2</a>
                        </li>
                        <li>
                          <a href="#">3</a>
                        </li>
                        <li>
                          <a href="#">
                            Next Page
                            <i className="icon-chevron-right" />
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>

                {/* end */}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
