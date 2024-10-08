import React from "react";
import { Link } from "react-router-dom";
import "../styles/Header.css";
import { FaFacebookSquare, FaTwitterSquare, FaInstagramSquare } from "react-icons/fa";

const Header = () => {
  return (
    <header className="header">
      <div className="logo">
        <Link to="/">WebtechID</Link>
      </div>
      <nav className="nav">
        <ul>
          <li>
            <Link to="/">Home</Link>
          </li>
          <li>
            <Link to="/blogs">Blog</Link>
          </li>
          <li>
            <Link to="/portofolio">Portfolio</Link>
          </li>
        </ul>
      </nav>
      <div className="social-icons">
        <a href="https://facebook.com" target="_blank" rel="noopener noreferrer">
          <FaFacebookSquare style={{ fontSize: "28px" }} />
        </a>
        <a href="https://twitter.com" target="_blank" rel="noopener noreferrer">
          <FaTwitterSquare style={{ fontSize: "28px" }} />
        </a>
        <a href="https://instagram.com" target="_blank" rel="noopener noreferrer">
          <FaInstagramSquare style={{ fontSize: "28px" }} />
        </a>
      </div>
    </header>
  );
};

export default Header;
