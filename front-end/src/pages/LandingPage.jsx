import React, { useState, useEffect } from "react";
import "../styles/App.css";
import { fetchBlogs, fetchPortfolios } from "../services/api"; 

const LandingPage = () => {
  const [blogs, setBlogs] = useState([]);
  const [portfolios, setPortfolios] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const blogData = await fetchBlogs();
        const portfolioData = await fetchPortfolios();
        
        const blogsArray = Array.isArray(blogData.data) ? blogData.data : [];
        const portfoliosArray = Array.isArray(portfolioData) ? portfolioData : [];

        setBlogs(blogsArray.slice(0, 3)); 
        setPortfolios(portfoliosArray.slice(0, 3));
        setLoading(false);
      } catch (error) {
        console.error("Error fetching data:", error);
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  return (
    <div className="landing-page">
      <Banner />
      <div className="content-sections">
        <BlogSection blogs={blogs} loading={loading} />
        <PortfolioSection portfolios={portfolios} loading={loading} />
      </div>
    </div>
  );
};

const Banner = () => (
  <section className="banner">
    <h1>Welcome to Our Website</h1>
    <p>Your one-stop solution for blogs and portfolios</p>
  </section>
);

const BlogSection = ({ blogs, loading }) => (
  <section className="blog-section">
    <h2>Latest Blogs</h2>
    {loading ? (
      <p>Loading blogs...</p>
    ) : blogs.length > 0 ? (
      <div className="blog-cards">
        {blogs.map((blog) => (
          <div key={blog.id} className="blog-card">
            <img src={blog.image} alt={blog.title} className="blog-image" />
            <h3>{blog.title}</h3>
            <p>{blog.summary}</p>
            <a href={`/blog/${blog.id}`} className="read-more">
              Read More
            </a>
          </div>
        ))}
      </div>
    ) : (
      <p>No blogs available.</p>
    )}
  </section>
);

const PortfolioSection = ({ portfolios, loading }) => (
  <section className="portfolio-section">
    <h2>Latest Portfolios</h2>
    {loading ? (
      <p>Loading portfolios...</p>
    ) : portfolios.length > 0 ? (
      <div className="portfolio-cards">
        {portfolios.map((portfolio) => (
          <div key={portfolio.id} className="portfolio-card">
            <img src={portfolio.image} alt={portfolio.title} className="portfolio-image" />
            <h3>{portfolio.title}</h3>
            <p>{portfolio.summary}</p>
            <a href={`/portfolio/${portfolio.id}`} className="view-details">
              View Details
            </a>
          </div>
        ))}
      </div>
    ) : (
      <p>No portfolios available.</p>
    )}
  </section>
);

export default LandingPage;
