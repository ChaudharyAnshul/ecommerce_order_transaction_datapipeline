-- create database
CREATE DATABASE ecommerce_db;

-- Show all DB
show databases;

-- use database
USE ecommerce_db;

-- Create `org_admin` with a strong password
CREATE USER 'org_admin'@'%' IDENTIFIED BY 'StrongAdminPassword!';
GRANT ALL PRIVILEGES ON ecommerce_db.* TO 'org_admin'@'%';

-- Create `writer_user` with a strong password
CREATE USER 'writer_user'@'%' IDENTIFIED BY 'StrongWriterPassword!';
GRANT SELECT, INSERT, UPDATE, DELETE ON ecommerce_db.* TO 'writer_user'@'%';

-- Create `reader_user` with a strong password
CREATE USER 'reader_user'@'%' IDENTIFIED BY 'StrongReaderPassword!';
GRANT SELECT ON ecommerce_db.* TO 'reader_user'@'%';

-- check access and new created users
SELECT user, host FROM mysql.user;
SHOW GRANTS FOR 'org_admin'@'%';
SHOW GRANTS FOR 'writer_user'@'%';
SHOW GRANTS FOR 'reader_user'@'%';

-- create user table
CREATE TABLE ecommerce_db.user (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
select * from ecommerce_db.user;
ALTER TABLE ecommerce_db.user MODIFY phone_number VARCHAR(25);

-- create adderess table
CREATE TABLE ecommerce_db.user_address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique ID for each address
    user_id INT NOT NULL,                       -- Foreign Key referencing the Users table
    address_line1 VARCHAR(255) NOT NULL,        -- Primary address line (e.g., street address)
    address_line2 VARCHAR(255),                 -- Secondary address line (e.g., apartment number)
    city VARCHAR(100) NOT NULL,                 -- City
    state VARCHAR(100),                         -- State/Province
    postal_code VARCHAR(20),                    -- Postal/Zip code
    country VARCHAR(100) NOT NULL,              -- Country
    address_type ENUM('billing', 'shipping') NOT NULL,  -- Type of address (e.g., billing, shipping)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp when address was created
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Timestamp when address was updated

    FOREIGN KEY (user_id) REFERENCES ecommerce_db.user(user_id) ON DELETE CASCADE
);
select * from ecommerce_db.user_address;

-- create category table
CREATE TABLE ecommerce_db.category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
select * from ecommerce_db.category;

-- create product table
CREATE TABLE ecommerce_db.product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    return_window_days INT DEFAULT 30, -- Return policy per product
    category_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES ecommerce_db.category(category_id) ON DELETE SET NULL
);
select * from ecommerce_db.product;

-- create order table
CREATE TABLE ecommerce_db.order (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_status VARCHAR(50) DEFAULT 'Pending', -- Pending, Paid, Failed
    delivery_status VARCHAR(50) DEFAULT 'Processing', -- Processing, Shipped, Delivered, Cancelled
    is_returned BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES ecommerce_db.user(user_id) ON DELETE CASCADE
);
select * from ecommerce_db.order;
ALTER TABLE ecommerce_db.order DROP COLUMN is_returned;

-- create order_item table
CREATE TABLE ecommerce_db.order_item (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL, -- Price at the time of order
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES ecommerce_db.order(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES ecommerce_db.product(product_id) ON DELETE CASCADE
);
select * from ecommerce_db.order_item;
ALTER TABLE ecommerce_db.order_item ADD COLUMN is_returned BOOLEAN DEFAULT FALSE;

-- create return_reasons tabe
CREATE TABLE ecommerce_db.return_reason (
    reason_id INT AUTO_INCREMENT PRIMARY KEY,
    reason_description VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from ecommerce_db.return_reason;

-- create return table 
CREATE TABLE ecommerce_db.return (
    return_id INT AUTO_INCREMENT PRIMARY KEY,
    order_item_id INT,
    return_request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    return_reason INT,
    return_reason_detailed VARCHAR(255)  NOT NULL,
    return_type VARCHAR(50) DEFAULT 'Refund', -- Refund or Replacement
    refund_method VARCHAR(50) DEFAULT 'Original Payment Method', -- Bank Transfer, Wallet, etc.
    refund_amount DECIMAL(10, 2) NOT NULL,
    penalty_amount DECIMAL(10, 2) DEFAULT 0.00, -- Optional restocking fee
    product_condition VARCHAR(50) DEFAULT 'Unknown', -- New, Damaged, Unsellable
    return_status VARCHAR(50) DEFAULT 'Pending', -- Pending, Approved, Rejected
    initiated_by VARCHAR(50) DEFAULT 'Customer', -- Customer, Support, System
    processed_date TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (order_item_id) REFERENCES ecommerce_db.order_item(order_item_id) ON DELETE CASCADE,
    FOREIGN KEY (return_reason) REFERENCES ecommerce_db.return_reason(reason_id) ON DELETE SET NULL
);
select * from ecommerce_db.return;

-- create return document table 
CREATE TABLE ecommerce_db.return_document (
    document_id INT AUTO_INCREMENT PRIMARY KEY,
    return_id INT,
    file_url TEXT NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (return_id) REFERENCES ecommerce_db.return(return_id) ON DELETE CASCADE
);

-- create payment table 
CREATE TABLE ecommerce_db.payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50) NOT NULL, -- Credit Card, Wallet, Bank Transfer
    payment_status VARCHAR(50) DEFAULT 'Pending', -- Pending, Completed, Failed
    amount DECIMAL(10, 2) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES ecommerce_db.order(order_id) ON DELETE CASCADE
);

-- create notification table
CREATE TABLE ecommerce_db.notification (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    message TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'Unread', -- Unread, Read
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES ecommerce_db.user(user_id) ON DELETE CASCADE
);

-- Indexes to improve query performance
CREATE INDEX idx_products_category ON ecommerce_db.product(category_id);
CREATE INDEX idx_orders_customer ON ecommerce_db.order(customer_id);
CREATE INDEX idx_returns_status ON ecommerce_db.return(return_status);










