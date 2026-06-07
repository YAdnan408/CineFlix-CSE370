# CineFlix

CineFlix Movies is an e-ticketing platform that transforms the movie-watching experience by embracing the digital age. The streamlined interface allows users to effortlessly book movie tickets with just a few clicks.

## Features
- 24/7 access to showtimes and booking.
- Intuitive seat selection.
- Real-time updates on showtimes and last-minute changes.
- Timely reminders for moviegoers.

## Prerequisites
- A local web server environment (e.g., [XAMPP](https://www.apachefriends.org/index.html) or [WAMP](http://www.wampserver.com/en/)).
- Git installed on your system.

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/your-username/CineFlix-CSE370.git
cd CineFlix-CSE370
```

### 2. Setup Database
1. Open your MySQL server (e.g., via XAMPP Control Panel).
2. Open phpMyAdmin (`http://localhost/phpmyadmin`).
3. Create a new database named `movietheatredb`.
4. Select the `movietheatredb` database and import the file `cineflix/movietheatredb.sql`.

### 3. Configure Database Connection
Update the database connection settings in `cineflix/config.php` to match your local setup:

```php
$host = "127.0.0.1";
$user = "root";     // Your MySQL username
$pass = "";         // Your MySQL password
$db = "movietheatredb";
$port = 3306;
```

### 4. Run the Project
1. Move the `cineflix/` folder to your server's root directory (e.g., `C:\xampp\htdocs\`).
2. Start your Apache server.
3. Access the project in your browser at `http://localhost/cineflix/`.

## Technology Stack
- **Database:** MySQL
- **Backend:** PHP
- **Frontend:** HTML, CSS, JavaScript
