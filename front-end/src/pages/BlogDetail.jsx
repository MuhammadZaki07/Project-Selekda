import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { fetchBlogDetail } from '../services/api';
import '../styles/BlogDetails.css';

const BlogDetail = () => {
  const { id } = useParams();
  const [blog, setBlog] = useState(null);
  // const [comments, setComments] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const blogData = await fetchBlogDetail(id);
        // const commentsData = await fetchComments(id);
        setBlog(blogData);
        // setComments(commentsData);
        setLoading(false);
      } catch (error) {
        console.error('Error fetching blog details:', error);
        setLoading(false);
      }
    };

    fetchData();
  }, [id]);

  if (loading) return <p>Loading...</p>;

  return (
    <div className="blog-detail-page">
      <header className="header">
        <h1>Blog Detail</h1>
      </header>
      <main className="blog-detail-content">
        <section className="blog-detail">
          <img src={blog.image} alt={blog.title} className="blog-image" />
          <h2>{blog.title}</h2>
          <p><strong>By:</strong> {blog.author}</p>
          <p><strong>Date:</strong> {blog.date}</p>
          <p>{blog.description}</p>
          <p><strong>Views:</strong> {blog.views}</p>
        </section>
        <section className="comments-section">
          <h3>Comments</h3>
          {/* {comments.length > 0 ? (
            <ul>
              {comments.map(comment => (
                <li key={comment.id} className="comment">
                  <img src={comment.userImage} alt={comment.userName} className="comment-user-image" />
                  <div className="comment-content">
                    <p><strong>{comment.userName}</strong> <small>{comment.date}</small></p>
                    <p>{comment.text}</p>
                  </div>
                </li>
              ))}
            </ul>
          ) : (
            <p>No comments yet.</p>
          )} */}
          <form className="comment-form">
            <h3>Leave a Comment</h3>
            <label>Name:
              <input type="text" name="name" required />
            </label>
            <label>Email:
              <input type="email" name="email" required />
            </label>
            <label>Subject:
              <input type="text" name="subject" />
            </label>
            <label>Website:
              <input type="url" name="website" />
            </label>
            <label>Comment:
              <textarea name="comment" required></textarea>
            </label>
            <label>Captcha:
              <input type="text" name="captcha" required />
            </label>
            <button type="submit">Submit</button>
          </form>
        </section>
        <aside className="tags-section">
          <h3>Popular Tags</h3>
          <ul>
            <li><a href="#">Tag 1</a></li>
            <li><a href="#">Tag 2</a></li>
            <li><a href="#">Tag 3</a></li>
          </ul>
        </aside>
      </main>
      <footer className="footer">
        {/* Tambahkan footer di sini */}
      </footer>
    </div>
  );
}

export default BlogDetail;
