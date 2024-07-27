DROP TABLE IF EXISTS customers,
employees,
products,
payments,
orders CASCADE;


CREATE TABLE customers (
    id serial PRIMARY KEY NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    gender varchar(50) NOT NULL,
    address varchar(200) NOT NULL,
    phone varchar(20) NOT NULL,
    email varchar(100) NOT NULL,
    city varchar(20) NOT NULL,
    country varchar(50) NOT NULL
);


CREATE TABLE employees (
    id serial PRIMARY KEY NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
    job_title varchar(20) NOT NULL
);


CREATE TABLE payments (
    id serial PRIMARY KEY NOT NULL,
    customer_id int REFERENCES customers(id) NOT NULL,
    payment_date timestamp NOT NULL,
    amount decimal NOT NULL
);


CREATE TABLE products (
    id serial PRIMARY KEY NOT NULL,
    product_name varchar(100) NOT NULL,
    description varchar(300) NOT NULL,
    buy_price decimal NOT NULL
);


CREATE TABLE orders (
    id serial PRIMARY KEY NOT NULL,
    product_id int REFERENCES products(id) NOT NULL,
    payment_id int REFERENCES payments(id) NOT NULL,
    fulfilled_by_employee_id int REFERENCES employees(id) NOT NULL,
    date_required timestamp NOT NULL,
    date_shipped timestamp,
    status varchar(20) NOT NULL
);