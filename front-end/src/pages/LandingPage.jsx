import React from "react";
import "../styles/App.css";

const LandingPage = () => {
  return (
    <div className="landing-page">
      <Banner />
    </div>
  );
};

const Banner = () => (
  <section className="banner">
    <h1>Welcome to Our Website</h1>
  </section>
);

export default LandingPage;
