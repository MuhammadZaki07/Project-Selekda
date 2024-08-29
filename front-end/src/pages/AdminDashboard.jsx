import React, { useState, useEffect } from 'react';
import '../styles/App.css';
import Headers from '../components/Header';
import Footer from '../components/Footer';
import { Link } from 'react-router-dom';
import { fetchDashboardData } from '../services/api';

function AdminDashboard() {
  const [dashboardData, setDashboardData] = useState({
    users: 0,
    posts: 0,
    comments: 0,
  });

  // Simulate fetching dashboard data
  useEffect(() => {
    // Fetch dashboard data and update the state
    setDashboardData({
      users: 120,
      posts: 340,
      comments: 450,
    });
  }, []);

  return (
    <div className="admin-dashboard">
      <Headers />
      <div className="dashboard-stats">
        <div className="stat-card">
          <h3>Total Users</h3>
          <p>{dashboardData.users}</p>
        </div>
        <div className="stat-card">
          <h3>Total Posts</h3>
          <p>{dashboardData.posts}</p>
        </div>
        <div className="stat-card">
          <h3>Total Comments</h3>
          <p>{dashboardData.comments}</p>
        </div>
      </div>
    </div>
  );
}

export default AdminDashboard;
