import React from 'react'
import { Footer, Nav, ListLatestArticles } from '@/components'

export default function Home() {
  return (
    <>
      <Nav />
      <main>
        <section className="section">
          <div className="container">
            <div className="row no-gutters-lg">
              <ListLatestArticles />
              <div className="col-lg-4">
                <div className="widget-blocks">
                  <div className="row">
                    <div className="col-lg-12">
                      <div className="widget">
                        <div className="widget-body">
                          <img
                            loading="lazy"
                            decoding="async"
                            src="images/author.jpg"
                            alt="About Me"
                            className="w-100 author-thumb-sm d-block"
                          />
                          <h2 className="widget-title my-3">Hootan Safiyari</h2>
                          <p className="mb-3 pb-2">
                            Hello, I’m Hootan Safiyari. A Content writter, Developer
                            and Story teller. Working as a Content writter at
                            CoolTech Agency. Quam nihil …
                          </p>{" "}
                          <a
                            href="about.html"
                            className="btn btn-sm btn-outline-primary"
                          >
                            Know More
                          </a>
                        </div>
                      </div>
                    </div>
                    <div className="col-lg-12 col-md-6">
                      <div className="widget">
                        <h2 className="section-title mb-3">Recommended</h2>
                        <div className="widget-body">
                          <div className="widget-list">
                            <article className="card mb-4">
                              <div className="card-image">
                                <div className="post-info">
                                  {" "}
                                  <span className="text-uppercase">
                                    1 minutes read
                                  </span>
                                </div>
                                <img
                                  loading="lazy"
                                  decoding="async"
                                  src="images/post/post-9.jpg"
                                  alt="Post Thumbnail"
                                  className="w-100"
                                />
                              </div>
                              <div className="card-body px-0 pb-1">
                                <h3>
                                  <a
                                    className="post-title post-title-sm"
                                    href="article.html"
                                  >
                                    Portugal and France Now Allow Unvaccinated
                                    Tourists
                                  </a>
                                </h3>
                                <p className="card-text">
                                  Lorem ipsum dolor sit amet, consectetur adipiscing
                                  elit, sed do eiusmod tempor …
                                </p>
                                <div className="content">
                                  {" "}
                                  <a className="read-more-btn" href="article.html">
                                    Read Full Article
                                  </a>
                                </div>
                              </div>
                            </article>
                            <a
                              className="media align-items-center"
                              href="article.html"
                            >
                              <img
                                loading="lazy"
                                decoding="async"
                                src="images/post/post-2.jpg"
                                alt="Post Thumbnail"
                                className="w-100"
                              />
                              <div className="media-body ml-3">
                                <h3 style={{ marginTop: "-5px" }}>
                                  These Are Making It Easier To Visit
                                </h3>
                                <p className="mb-0 small">
                                  Heading Here is example of hedings. You can use …
                                </p>
                              </div>
                            </a>
                            <a
                              className="media align-items-center"
                              href="article.html"
                            >
                              {" "}
                              <span className="image-fallback image-fallback-xs">
                                No Image Specified
                              </span>
                              <div className="media-body ml-3">
                                <h3 style={{ marginTop: "-5px" }}>
                                  No Image specified
                                </h3>
                                <p className="mb-0 small">
                                  Lorem ipsum dolor sit amet, consectetur adipiscing
                                  …
                                </p>
                              </div>
                            </a>
                            <a
                              className="media align-items-center"
                              href="article.html"
                            >
                              <img
                                loading="lazy"
                                decoding="async"
                                src="images/post/post-5.jpg"
                                alt="Post Thumbnail"
                                className="w-100"
                              />
                              <div className="media-body ml-3">
                                <h3 style={{ marginTop: "-5px" }}>
                                  Perfect For Fashion
                                </h3>
                                <p className="mb-0 small">
                                  Lorem ipsum dolor sit amet, consectetur adipiscing
                                  …
                                </p>
                              </div>
                            </a>
                            <a
                              className="media align-items-center"
                              href="article.html"
                            >
                              <img
                                loading="lazy"
                                decoding="async"
                                src="images/post/post-9.jpg"
                                alt="Post Thumbnail"
                                className="w-100"
                              />
                              <div className="media-body ml-3">
                                <h3 style={{ marginTop: "-5px" }}>
                                  Record Utra Smooth Video
                                </h3>
                                <p className="mb-0 small">
                                  Lorem ipsum dolor sit amet, consectetur adipiscing
                                  …
                                </p>
                              </div>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="col-lg-12 col-md-6">
                      <div className="widget">
                        <h2 className="section-title mb-3">Categories</h2>
                        <div className="widget-body">
                          <ul className="widget-list">
                            <li>
                              <a href="#!">
                                computer<span className="ml-auto">(3)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                cruises<span className="ml-auto">(2)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                destination<span className="ml-auto">(1)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                internet<span className="ml-auto">(4)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                lifestyle<span className="ml-auto">(2)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                news<span className="ml-auto">(5)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                telephone<span className="ml-auto">(1)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                tips<span className="ml-auto">(1)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                travel<span className="ml-auto">(3)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                website<span className="ml-auto">(4)</span>
                              </a>
                            </li>
                            <li>
                              <a href="#!">
                                hugo<span className="ml-auto">(2)</span>
                              </a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  )
}
