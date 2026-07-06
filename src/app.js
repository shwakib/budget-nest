const express = require("express");

const app = express();

// Middleware (important for JSON APIs)
app.use(express.json());

// Simple test route
app.get("/health", (req, res) => {
  res.json({
    success: true,
    message: "Budget Nest API is running 🚀"
  });
});

module.exports = app;