# 🍽️ Food Delivery Management System Swiggy case study

A relational database system designed to manage users, restaurants, food items, menus, delivery partners, orders, and order details efficiently.

---

## 📌 Features
- ✅ User registration and authentication
- ✅ Restaurant and menu management
- ✅ Food item categorization
- ✅ Order placement and tracking
- ✅ Delivery partner assignment
- ✅ Customer rating system for orders and restaurants

---

## 🏗 Database Schema

The database consists of the following tables:

| Table Name        | Description                                      |
|------------------|--------------------------------------------------|
| **Users**        | Stores user information                         |
| **Restaurants**  | Stores restaurant details                       |
| **Food**        | Stores available food items                      |
| **Menu**        | Maps restaurants to food items with pricing      |
| **Delivery Partner** | Stores delivery partner details             |
| **Orders**      | Stores customer orders and their status          |
| **Order Details** | Maps orders to food items                      |

---

## 📜 SQL Schema

```sql
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE restaurants (
    r_id SERIAL PRIMARY KEY,
    r_name VARCHAR(50) NOT NULL,
    cuisine VARCHAR(30) NOT NULL
);

CREATE TABLE food (
    f_id SERIAL PRIMARY KEY,
    f_name VARCHAR(50) NOT NULL,
    type VARCHAR(30) NOT NULL
);

CREATE TABLE menu (
    menu_id SERIAL PRIMARY KEY,
    r_id INT REFERENCES restaurants(r_id) ON DELETE CASCADE,
    f_id INT REFERENCES food(f_id) ON DELETE CASCADE,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE delivery_partner (
    partner_id SERIAL PRIMARY KEY,
    partner_name VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    r_id INT REFERENCES restaurants(r_id) ON DELETE CASCADE,
    amount DECIMAL(10,2) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    partner_id INT REFERENCES delivery_partner(partner_id) ON DELETE SET NULL,
    delivery_time INTERVAL,
    delivery_rating INT CHECK (delivery_rating BETWEEN 1 AND 5),
    restaurant_rating INT CHECK (restaurant_rating BETWEEN 1 AND 5)
);

CREATE TABLE order_details (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id) ON DELETE CASCADE,
    f_id INT REFERENCES food(f_id) ON DELETE CASCADE
);
```

---

## 🚀 Getting Started

1. **Clone this repository:**
   ```sh
   git clone https://github.com/your-username/food-delivery-db.git
   ```
2. **Set up the database:**
   - Use PostgreSQL or MySQL.
   - Execute the provided SQL schema to create tables.
3. **Insert sample data and run queries.**

---

## 🛠 Technologies Used
- **Database**: PostgreSQL / MySQL
- **Query Language**: SQL
- **Backend Support**: Can be integrated with Python, Node.js, Java, etc.

---

## 🤝 Contribution
- Fork the repository.
- Create a new branch (`feature-branch-name`).
- Commit your changes and push to GitHub.
- Open a pull request.

---

## 📧 Contact
For any issues or improvements, feel free to open an issue or contribute! 🎉

📩 **Email:** jitendraguptaaur@gmail.com

🔗 **GitHub:** [Your Repository](https://github.com/jpb2022/Swiggy-Case-Study-SQL)
