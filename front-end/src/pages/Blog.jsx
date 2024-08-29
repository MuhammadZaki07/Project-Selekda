import React, { useEffect, useState } from 'react';
import '../styles/App.css'; 
import Header from '../components/Header';
import Footer from '../components/Footer';
import BlogList from '../components/BlogList';
import CategoryList from '../components/CategoryList';
import PopularPosts from '../components/PopularPosts';
import TagCloud from '../components/TagCloud';
import { fetchBlogs } from '../services/api';

const Blog = () => {
  const [blogs, setBlogs] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchBlogs().then(data => {
      setBlogs(data);
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
            <p>Loading...</p>
          ) : (
            <BlogList blogs={blogs} />
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
