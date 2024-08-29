import React from "react";
import LandingPage from "./pages/LandingPage";
import "./styles/App.css";
import { Route, Routes } from "react-router-dom";
import { Layout } from "./components/Layout";
import Portfolio from "./pages/Portofolio";
import { Login } from "./pages/Login";

const App = () => {
  return (
    <Routes>
      <Route path="/login" element={<Login />} />
      <Route path="/" element={<Layout />}>
        <Route index element={<LandingPage />} />
        <Route path="portofolio" element={<Portfolio />} />
      </Route>
    </Routes>
  );
};

export default App;
