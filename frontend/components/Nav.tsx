import React from 'react'

export default function Nav() {
  return (
    <header className="navigation">
      <div className="container">
        <nav className="navbar navbar-expand-lg navbar-light px-0">
          <a className="navbar-brand order-1 py-0" href="index.html">
            <img
              loading="prelaod"
              decoding="async"
              className="img-fluid"
              src="images/logo.png"
              alt="Reporter Hugo"
            />
          </a>
          <div className="navbar-actions order-3 ml-0 ml-md-4">
            <button
              aria-label="navbar toggler"
              className="navbar-toggler border-0"
              type="button"
              data-toggle="collapse"
              data-target="#navigation"
            >
              {" "}
              <span className="navbar-toggler-icon" />
            </button>
          </div>
          <form
            action="#!"
            className="search order-lg-3 order-md-2 order-3 ml-auto"
          >
            <input
              id="search-query"
              name="s"
              type="search"
              placeholder="Search..."
              autoComplete="off"
            />
          </form>
          <div
            className="collapse navbar-collapse text-center order-lg-2 order-4"
            id="navigation"
          >
            <ul className="navbar-nav mx-auto mt-3 mt-lg-0">
              <li className="nav-item">
                {" "}
                <a className="nav-link" href="http://localhost:3000">
                  About Me
                </a>
              </li>
              <li className="nav-item dropdown">
                {" "}
                <a
                  className="nav-link dropdown-toggle"
                  href="#"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  Articles
                </a>
                <div className="dropdown-menu">
                  {" "}
                  <a className="dropdown-item" href="travel.html">
                    Travel
                  </a>
                  <a className="dropdown-item" href="travel.html">
                    Lifestyle
                  </a>
                  <a className="dropdown-item" href="travel.html">
                    Cruises
                  </a>
                </div>
              </li>
              <li className="nav-item">
                {" "}
                <a className="nav-link" href="contact.html">
                  Contact
                </a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header>
  )
}
