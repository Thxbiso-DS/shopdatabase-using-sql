
## Project Overview

* **Objective:** Create a database schema, populate it with data, and execute SQL queries to extract insights from the dataset.
* **Project instructions:** [here](http://syllabus.africacode.net/sql/shop-project/)

  
## Prerequisites

- PostgreSQL
- Docker

## Database Schema Documentation

### Customers Table
- **id**: Primary key, auto-incremented unique identifier for each customer.
- **first_name**: First name of the customer.
- **last_name**: Last name of the customer.
- **gender**: Gender of the customer.
- **address**: Address of the customer.
- **phone**: Phone number of the customer.
- **email**: Email address of the customer.
- **city**: City where the customer resides.
- **country**: Country where the customer resides.

### Employees Table
- **id**: Primary key, auto-incremented unique identifier for each employee.
- **first_name**: First name of the employee.
- **last_name**: Last name of the employee.
- **email**: Email address of the employee.
- **job_title**: Job title of the employee.

### Payments Table
- **id**: Primary key, auto-incremented unique identifier for each payment.
- **customer_id**: Foreign key referencing the id in the Customers table.
- **payment_date**: Date of the payment.
- **amount**: Amount of the payment.

### Products Table
- **id**: Primary key, auto-incremented unique identifier for each product.
- **product_name**: Name of the product.
- **description**: Description of the product.
- **buy_price**: Price of the product.

### Orders Table
- **id**: Primary key, auto-incremented unique identifier for each order.
- **product_id**: Foreign key referencing the id in the Products table.
- **payment_id**: Foreign key referencing the id in the Payments table.
- **fulfilled_by_employee_id**: Foreign key referencing the id in the Employees table.
- **date_required**: Date when the order is required.
- **date_shipped**: Date when the order is shipped.
- **status**: Status of the order.

### Relationships
- **Customers - Payments**: One-to-Many relationship. A customer can have multiple payments.
- **Products - Orders**: One-to-Many relationship. A product can appear in multiple orders.
- **Payments - Orders**: One-to-Many relationship. A payment can be associated with multiple orders.
- **Employees - Orders**: One-to-Many relationship. An employee can fulfill multiple orders.


## Installation and Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/Thxbiso-DS/shopdatabase-using-sql.git
    ```

2. Navigate to the directory
    ```bash
    cd shopdatabase-using-sql/
    ```

3. Start the Docker containers:
    ```bash
    docker-compose up -d
    ```

4. Open Adminer by using the following link
    ```
    localhost:8080
    ```

5. Log in using the following details
    ```
    System:   PostgreSQL
    Server:   postgres
    Username: user
    Password: [The password is in the docker-compose.yaml file under POSTGRES_PASSWORD]
    Database: shop
    ```

 
6. Choose Click on import to, navigate to your src directory of your project and click the following file
    ```
    create-tables.sql
    ```

7. Repeat the previous steps, this time you should choose the file
    ```
    insert-records.sql
    ```
8. Now you have access to the tables in the SQL script with all its records inserted

## Usage
1. To view the queries for the table, select import, navigate to the src directory and select:
    ```
    query-tables.sql
    ```
2. After veiwing all the queries click `Logout` in the top right corner 
3. On your command line enter the following command
    ```bash
    docker-compose down
    ```


## Author 
Thabiso Mokgete  
* s.mokgete@gmail.com 

## License 
Copyright © 2023 [Thabiso Mokgete](https://github.com/Thxbiso-DS).<br />
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
