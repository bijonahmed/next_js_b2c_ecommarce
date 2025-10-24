🛍️ Next.js B2C E-Commerce with Laravel API

This project is a modern Business-to-Consumer (B2C) e-commerce platform developed using Next.js for the frontend and Laravel for the backend API. It is designed to provide customers with a seamless shopping experience, combining a fast and responsive user interface with a secure and scalable backend system. The platform includes essential e-commerce features such as product listing, cart management, user authentication, order handling, and integrated payment gateways like Stripe and PayPal.

🚀 Overview

The application is divided into two main parts. The frontend, built with Next.js, delivers an SEO-friendly and dynamic shopping experience with responsive design powered by Tailwind CSS. The backend, developed with Laravel, provides a robust RESTful API for handling authentication, products, orders, and user management. Together, they form a complete full-stack solution ideal for scalable B2C online stores.

🧩 Technologies Used

The frontend uses Next.js 14+, TypeScript, Tailwind CSS, and Axios for API requests. Optional tools like Context API or Redux Toolkit can be used for global state management. The backend is powered by Laravel 10+, using MySQL as the database, Sanctum or JWT for authentication, and the Eloquent ORM for database operations. Both systems follow RESTful API standards for smooth communication between client and server.

⚙️ Project Structure

The project consists of two folders: one for the Next.js frontend and another for the Laravel API backend.
The Next.js directory includes folders for components, services, hooks, and pages (or app directory).
The Laravel folder contains controllers, models, routes, and database migrations.
This clean separation allows each part of the system to be developed, deployed, and maintained independently.

✨ Features

This project includes a variety of key e-commerce features such as user registration and login, product browsing, cart management, and secure checkout. Customers can view detailed product information, add items to their cart, and place orders with integrated payment gateways. An admin dashboard can be connected to the same Laravel API for managing products, orders, and users. The frontend is fully responsive, SEO-friendly, and optimized for performance.

🧠 Development Notes

For better security, Axios interceptors handle authentication tokens in Next.js, and tokens are stored using HttpOnly cookies or localStorage depending on the implementation. Laravel handles CORS via the fruitcake/laravel-cors package, ensuring the frontend and backend communicate without restrictions. The system follows RESTful conventions for cleaner and more maintainable code.

👨‍💻 Author

Developed by Md. Bijon Ahmed, a full-stack developer passionate about creating scalable web applications.
You can visit the company website at FutureGenIT
 or connect via Fiverr
For inquiries, email contact@futuregenit.com
📜 License

This project is open-source and distributed under the MIT License. You are free to use, modify, and distribute the project with proper credit.

🏁 Quick Start

To quickly launch the project:
Start the Laravel API using php artisan serve.
Run the Next.js frontend using npm run dev.

Open http://localhost:3000
 in your browser.

You’ll have a complete B2C e-commerce site running locally — ready for development, customization, and deployment.
