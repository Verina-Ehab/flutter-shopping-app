# Flutter Shopping App Project
Sprints x Microsoft Summer Camp - Mobile Development Final Project

This repository contains the source code for a comprehensive Flutter shopping application. The project was developed as a step-by-step guide to mastering Dart and Flutter, progressing from fundamental concepts to intermediate mobile development techniques.

## 🚀 Project Overview

The application simulates a real-world mobile shopping experience. It features user authentication (Sign Up and Sign In), a dynamic home screen with product displays, cart functionality, and a responsive user interface that works on different screen sizes. The final stage of the project includes localization support for the Arabic language.

## ✨ Features

-   **Aesthetic Welcome Screen:** A static intro page that directs users to sign up or sign in.
-   **User Authentication:**
    -   Sign-up form with input validation (name, email, password).
    -   Sign-in form for returning users.
-   **Interactive Shopping Home Screen:**
    -   A horizontal `PageView` for featured products.
    -   A responsive `GridView` displaying product cards (2 per row).
    -   An "Add to Cart" icon on each product, with a `SnackBar` confirmation.
    -   A vertically scrollable "Hot Offers" section built with `ListView.builder`.
-   **Smooth Navigation:** Animated fade transitions between the authentication and home screens.
-   **Localization (Bonus):** Full Arabic language support using the `intl` package, with no hardcoded UI strings.
-   **Clean Codebase:** The project follows best practices, including modular widgets, clear naming conventions, and proper file structure.

## 🛠️ Tools & Technologies Used

-   **Dart:** For core application logic, functions, and OOP.
-   **Flutter SDK:** For building the user interface and all app features.
-   **IDE:** VS Code / Android Studio.
-   **Localization:** `flutter_intl` for Arabic language support.
-   **Version Control:** Git & GitHub.

## ⚙️ Setup and Installation

To run this project locally, follow these steps:

1.  **Prerequisites:**
    -   Ensure you have the [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.
    -   An IDE like VS Code or Android Studio with the Flutter plugin.

2.  **Clone the Repository:**
    ```sh
    git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
    ```

3.  **Navigate to the Project Directory:**
    ```sh
    cd YOUR_REPO_NAME
    ```

4.  **Install Dependencies:**
    ```sh
    flutter pub get
    ```

5.  **Run the App:**
    ```sh
    flutter run
    ```
