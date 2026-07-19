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

-- =========================================
-- ACCOUNTS
-- =========================================

CREATE TABLE IF NOT EXISTS accounts (
    id SERIAL PRIMARY KEY,

    user_id INTEGER NOT NULL REFERENCES users(id),

    financial_institution_id INTEGER NOT NULL
        REFERENCES financial_institutions(id),

    account_type_id INTEGER NOT NULL
        REFERENCES account_types(id),

    product_name VARCHAR(100) NOT NULL,

    nickname VARCHAR(100),

    last_four_digits CHAR(4),

    opening_balance NUMERIC(12,2) NOT NULL DEFAULT 0.00,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- CREDIT CARDS
-- =========================================

CREATE TABLE IF NOT EXISTS credit_cards (
    id SERIAL PRIMARY KEY,

    account_id INTEGER NOT NULL UNIQUE
        REFERENCES accounts(id) ON DELETE CASCADE,

    credit_limit NUMERIC(12,2) NOT NULL,

    statement_day SMALLINT NOT NULL CHECK (statement_day BETWEEN 1 AND 31),

    payment_due_day SMALLINT NOT NULL CHECK (payment_due_day BETWEEN 1 AND 31),

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_accounts_user
ON accounts(user_id);

CREATE INDEX idx_accounts_institution
ON accounts(financial_institution_id);

CREATE INDEX idx_accounts_type
ON accounts(account_type_id);