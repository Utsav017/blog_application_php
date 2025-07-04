# 📝 Blog Application – PHP & MySQL Full-Stack Project

A fully responsive, multi-page **blog application** built using **HTML, CSS, JavaScript, PHP, and MySQL**, featuring complete CRUD operations, user authentication, role-based access control, image uploads, and dynamic content rendering.

> 🔧 Developed by following a comprehensive video tutorial with real-world best practices and enhancements.

---

## 🚀 Features

### 👤 User Authentication
- Secure registration with avatar image upload
- Login using email or username
- Passwords hashed with `password_hash()` and verified with `password_verify()`
- Persistent sessions with role management

### 🧑‍💼 Role-Based Access Control
- **Admins** can manage:
  - All users
  - Blog categories
  - All posts
- **Authors** can manage:
  - Only their own posts

### 🗂️ CRUD Functionality
- **Posts**: Create, Read, Update, Delete with thumbnails
- **Categories**: Add, edit, delete with fallback to "Uncategorized"
- **Users**: Register, list, update, delete (with cascading post deletion)

### 📁 File Uploads
- Avatar and post thumbnail uploads with:
  - File renaming (to avoid conflicts)
  - Size/type validation
  - Cleanup of files on deletion

### 🔐 Security
- Input sanitization with PHP filter functions
- Prevention of SQL injection
- Form validation on both frontend and backend

### 🔎 Search & Filters
- Search posts by title
- Filter posts by category
- Dynamic menus and feedback messages

### 📱 Responsive UI
- Built with Flexbox, CSS Grid, and media queries
- Mobile-first layout with hamburger menu and collapsible navigation

---

## 🧰 Tech Stack

- **Frontend:** HTML5, CSS3, JavaScript
- **Backend:** PHP (vanilla)
- **Database:** MySQL with foreign key constraints
- **Server:** XAMPP (Apache, MySQL, PHP)

---

## 🗃️ Project Structure

/admin/           → Admin dashboard pages
/includes/        → Reusable PHP partials (header, footer, navbar)
/config/          → Database config & constants
/images/          → Uploaded avatars and post thumbnails
/blog.php         → Lists all blog posts with search
/index.php        → Homepage with featured posts
/post.php         → Single blog post
/login.php        → Login page
/signup.php       → User registration
/logout.php       → Destroy session and logout



---

## 🛠️ How to Run This Project Locally

1. **Install XAMPP**  
   [https://www.apachefriends.org/index.html](https://www.apachefriends.org/index.html)

2. **Clone this repository:**
   ```bash
   git clone https://github.com/Utsav017/blog_application_php

3. **Move the project** to your XAMPP `htdocs/` directory:

   ```bash
   mv blog_application_php/ /path-to-xampp/htdocs/
   ```

4. **Start Apache and MySQL** from the XAMPP Control Panel

5. **Import the SQL file** into phpMyAdmin:

   * Open `http://localhost/phpmyadmin`
   * Create a new database named `blog`
   * Import `blog.sql` provided in this repo

6. **Access the app** via:

   ```
   http://localhost/blog_application_php/
   ```

---

## 🧠 Learning Outcomes

* Built a complete, secure, and responsive full-stack web application
* Implemented session management and user roles from scratch
* Gained real-world experience with image uploads, form validation, and database design

---

## 📈 Future Improvements

* 🗨️ Comment system for posts
* 📄 Pagination for blog and admin lists
* 🔗 REST API endpoints (for future frontend frameworks like React)
* 🧾 Rich-text editor for writing posts

---

## 📸 Screenshots

### 🏠 Homepage

![Homepage Screenshot](https://github.com/user-attachments/assets/6d3715de-ba63-4fdd-acca-56ce99c143d3)

### 🛠️ Admin Dashboard

![Admin Dashboard Screenshot](https://github.com/user-attachments/assets/e85cb7be-3aa7-4521-b45b-cfd9f76a9bec)

---

## 🙌 Acknowledgements

Inspired by [YouTube Tutorial – Blog Application using PHP & MySQL](https://youtu.be/9j9BTyQtghM?si=jYwRvHe6hEi0WYi5)
Thanks to the instructor for a detailed walk-through of full-stack development.

---

## 📬 Contact

**Shivansh Gupta**
🔗 [LinkedIn](https://www.linkedin.com/in/shivansh-gupta017) | [GitHub](https://github.com/Utsav017)

---

> ⭐ *Star this repo if you found it helpful! Contributions are welcome.*
