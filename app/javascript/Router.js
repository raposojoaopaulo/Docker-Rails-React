import React from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import FristPage from "./pages/FristPage";
import Home from "./pages/Home";

export const Router = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/frist" element={<FristPage />} />
      </Routes>
    </BrowserRouter>
  );
};