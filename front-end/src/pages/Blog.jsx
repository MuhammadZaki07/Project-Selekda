import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import '../styles/App.css'; 
import Header from '../components/Header';
import Footer from '../components/Footer';
import CategoryList from '../components/CategoryList';
import PopularPosts from '../components/PopularPost';
import TagCloud from '../components/TagCloud';
import { fetchBlogs } from '../services/api';

const Blog = () => {
  const [blogs, setBlogs] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchBlogs()
      .then(data => {
        console.log(data);
        if (Array.isArray(data)) {
          setBlogs(data);
        } else if (data && data.data) {
          setBlogs(data.data);
        }
        setLoading(false);
      })
      .catch(error => {
        console.error('Error fetching blogs:', error);
        setLoading(false);
      });
  }, []);

  return (
    <div className="blog-page">
      <Header />
      <div className="blog-content">
        <div className="blog-main">
          <h2>Blog</h2>
          {loading ? (
            <p>Loading blogs...</p>
          ) : blogs.length > 0 ? (
            <ul className="blog-list">
              {blogs.map(blog => (
                <li key={blog.id} className="blog-item">
                  <h3>{blog.title}</h3>
                  <p>{blog.summary}</p>
                  <button>
                  <Link to={`/blog/${blog.id}`} className="read-more">Read More</Link>
                  </button>
                </li>
              ))}
            </ul>
          ) : (
            <p>No blogs available.</p>
          )}
        </div>
        <aside className="blog-sidebar">
          <CategoryList />
          <PopularPosts />
          <TagCloud />
        </aside>
      </div>
      <Footer />
    </div>
  );
}

export default Blog;
