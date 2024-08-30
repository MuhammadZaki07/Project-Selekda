import React, { useEffect, useState } from "react";
import "../styles/Portofolio.css";
import Header from "../components/Header";
import Footer from "../components/Footer";
import { fetchPortfolios } from "../services/api";
import PortfolioModal from "../components/PortofolioModal";

const Portfolio = () => {
  const [portfolios, setPortfolios] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedPortfolio, setSelectedPortfolio] = useState(null);

  useEffect(() => {
    fetchPortfolios().then((data) => {
      setPortfolios(data);
      setLoading(false);
    });
  }, []);

  const handlePortfolioClick = (portfolio) => {
    setSelectedPortfolio(portfolio);
  };

  const handleCloseModal = () => {
    setSelectedPortfolio(null);
  };

  return (
    <div className="portfolio-page">
      <div className="portfolio-content">
        <aside className="portfolio-sidebar">
          <h3>Filter Categories</h3>
          <ul>
            <li>
              <a href="#">Category 1</a>
            </li>
            <li>
              <a href="#">Category 2</a>
            </li>
            <li>
              <a href="#">Category 3</a>
            </li>
          </ul>
        </aside>
        <div className="portfolio-main">
          <h2>Portfolio</h2>
          {loading ? (
            <p>Loading...</p>
          ) : (
            <div className="portfolio-grid">
              {portfolios.map((portfolio) => (
                <div key={portfolio.id} className="portfolio-item" onClick={() => handlePortfolioClick(portfolio)}>
                  <img src={portfolio.image} alt={portfolio.title} />
                  <h3>{portfolio.title}</h3>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
      {selectedPortfolio && <PortfolioModal portfolio={selectedPortfolio} onClose={handleCloseModal} />}
    </div>
  );
};

export default Portfolio;
