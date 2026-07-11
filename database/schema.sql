-- =========================================
-- USERS TABLE
-- =========================================

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,

    first_name VARCHAR(50) NOT NULL,

    last_name VARCHAR(50),

    email VARCHAR(255) UNIQUE NOT NULL,

    password_hash TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);