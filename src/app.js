const express = require("express");
const pool = require("./config/database");

const app = express();

app.use(express.json());

// Health check
app.get("/health", (req, res) => {
  res.json({
    success: true,
    message: "Budget Nest API is running 🚀"
  });
});

// DB test route
app.get("/db-test", async (req, res) => {
  try {
    const result = await pool.query("SELECT NOW()");
    
    res.json({
      success: true,
      time: result.rows[0]
    });
  } catch (error) {
    res.status(500).json({
      success: false,
      error: error.message
    });
  }
});

module.exports = app;