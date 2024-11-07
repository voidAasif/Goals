# Goal Tracking App

A simple and efficient tool to help you set, prioritize, and track your goals. Built with Java Swing and designed to provide a seamless experience, this app is perfect for students and individuals who want to stay on top of their personal or professional goals.

---

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
- [Technologies Used](#technologies-used)
- [License](#license)
- [Contact](#contact)

---

## Features

- **Home Page**: Provides a snapshot of your current goals and quick actions.
- **Calendar View**: Visualize goals and track progress over time.
- **Priority Management**: Organize goals by priority level.
- **To-Do List**: Manage daily tasks linked to each goal.
- **My Goals**: View all goals in detail, track completion status.
- **Welcome Page**: A user-friendly entry point for setting up user profiles.

---

## Technologies Used

The following technologies were used in building this project:

- **Java**: The primary programming language used for application logic and GUI development.
- **Java Swing**: Used to create the graphical user interface for a smooth, interactive experience.
- **JavaFX**: Utilized for additional visual components and scene transitions.
- **JDBC (Java Database Connectivity)**: Facilitates database operations and allows interaction with the MariaDB database.
- **MariaDB**: A relational database system used to store and manage goal data.
- **Properties Configuration**: External configuration via `config.properties` to manage database credentials securely.
- **SQL**: Used for creating and managing database tables, and executing queries for CRUD operations.
- **Git & GitHub**: Version control and code sharing.
  

---

## Screenshots

Here are some screenshots showcasing the app’s main features. Replace the image paths with actual paths to your screenshots.

### 1. Welcome Page
The welcome page greets users with setup options.

![welcome](https://github.com/user-attachments/assets/f32ec24a-0cbc-4674-a478-6171915799e9)

### 2. Home Page
The home page provides an overview of goals and progress.

![home](https://github.com/user-attachments/assets/7a1cb94c-9256-4e55-949e-cb59450a713e)

### 3. Calendar View
Track and visualize goals on specific dates.

![calander](https://github.com/user-attachments/assets/ca940a41-63bb-41a0-92cd-8cd744c612e6)


### 4. Priority View
Organize goals by priority to focus on the most important tasks.

![priority](https://github.com/user-attachments/assets/30f06499-0b78-4c43-94da-b4385d5a3bc7)


### 5. To-Do List
A task list to manage day-to-day steps related to each goal.

![todo](https://github.com/user-attachments/assets/efe7e924-5615-4314-abc4-8ffd9fb8d6a9)


### 6. My Goals
A comprehensive list showing all goals and their current progress.

![myGoalsList](https://github.com/user-attachments/assets/e4900d99-fe30-4725-8092-16e754b62f8f)

---

## Getting Started

### Prerequisites

- **Java 8** or later
- **MariaDB** or **AWS** for goal data storage (optional but recommended)

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/voidAasif/Goals.git

## Database Setup

To set up the database, import the provided SQL file:

```bash
mysql -u username -p database_name < database/goals.sql

## Database Configuration

To keep your database credentials secure and easy to modify, this project uses an external configuration file, `config.properties`. This allows you to update your database settings without changing the source code directly.

### Steps to Set Up Database Credentials

1. **Create a Configuration File**:  
   Inside the `src` directory of the project, create a new file named `config.properties` if it doesn’t already exist.

   In `config.properties`, add the following lines and replace the values with your own database credentials:

   ```properties
   # config.properties
   db.username=your_database_username
   db.password=your_database_password

