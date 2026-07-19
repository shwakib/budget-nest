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

-- =========================================
-- FINANCIAL INSTITUTIONS
-- =========================================

CREATE TABLE IF NOT EXISTS financial_institutions (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    website VARCHAR(255),

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- ACCOUNT TYPES
-- =========================================

CREATE TABLE IF NOT EXISTS account_types (
    id SERIAL PRIMARY KEY,

    name VARCHAR(50) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- EMPLOYERS
-- =========================================

CREATE TABLE IF NOT EXISTS employers (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- INCOME TYPES
-- =========================================

CREATE TABLE IF NOT EXISTS income_types (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- EXPENSE CATEGORIES
-- =========================================

CREATE TABLE IF NOT EXISTS expense_categories (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- PAYMENT METHODS
-- =========================================

CREATE TABLE IF NOT EXISTS payment_methods (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- TRANSFER TYPES
-- =========================================

CREATE TABLE IF NOT EXISTS transfer_types (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- TRANSFER TYPES
-- =========================================

CREATE TABLE IF NOT EXISTS transfer_types (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);