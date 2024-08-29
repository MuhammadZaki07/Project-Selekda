import React from 'react';
import '../styles/App.css'; 

const PortfolioModal = ({ portfolio, onClose }) => (
  <div className="portfolio-modal">
    <div className="portfolio-modal-content">
      <span className="close" onClick={onClose}>&times;</span>
      <h2>{portfolio.title}</h2>
      <img src={portfolio.image} alt={portfolio.title} />
      <p>{portfolio.description}</p>
      <p><strong>Author:</strong> {portfolio.author}</p>
      <p><strong>Date:</strong> {portfolio.date}</p>
      <p><strong>Views:</strong> {portfolio.views}</p>
      <p><strong>Comments:</strong> {portfolio.comments}</p>
    </div>
  </div>
);

export default PortfolioModal;
