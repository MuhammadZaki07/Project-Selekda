import React from "react";
import LandingPage from "./pages/LandingPage";
import "./styles/App.css";
import { Route, Routes } from "react-router-dom";
import { Layout } from "./components/Layout";
import Portfolio from "./pages/Portofolio";
import Login from "./pages/Login";
import Register from "./pages/Register";
import Blog from "./pages/Blog";
import BlogDetail from "./pages/BlogDetail";

const App = () => {
  return (
    <Routes>
      <Route path="/login" element={<Login />} />
      <Route path="/blogs" element={<Blog />} />
      <Route path="/blog/:id" element={<BlogDetail />} />
      <Route path="/register" element={<Register />} />
      <Route path="/" element={<Layout />}>
        <Route index element={<LandingPage />} />
        <Route path="portofolio" element={<Portfolio />} />
      </Route>
    </Routes>
  );
};

export default App;
