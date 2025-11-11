# 🛒 Flutter Mini E-Commerce App (Provider State Management)

Welcome to the **Mini Mart**, a mobile e-commerce application built with Flutter to demonstrate clean architecture and efficient state management using the Provider package.

This project is a perfect starting point for understanding how to build scalable, feature-rich applications using Flutter's recommended patterns.

## ✨ Features

This application includes the essential components required for a modern e-commerce experience:

### User-Facing Features (The "Mini Mart" Experience)

* **Authentication Flow:** Secure User Sign-up, Login, and Logout.
* **Product Catalog:** Browse products in a grid view, with search and category filtering.
* **Product Details:** View item descriptions, price, and images.
* **Shopping Cart:** Add, remove, and adjust quantities of items.
* **Dynamic Total:** Real-time calculation of cart subtotal, shipping, and total.
* **Coupon Logic:** Apply a hardcoded coupon (`FLUTTER20`) for a simulated discount.
* **Checkout Process:** Simulated flow including shipping address input and payment processing.
* **Order History:** View a list of past orders with status updates.

### Architectural Highlights (The Tech Stack)

* **Frontend:** Flutter (Dart) for a beautiful, single-codebase mobile experience.
* **State Management:** **Provider** (`ChangeNotifier`) for robust and simple global state management.
* **Architecture:** Clear separation of concerns into **Models, Services, Providers, and UI** (Screens/Widgets).
* **Data Handling:** Simulated API interaction (using a mock service or a local JSON source) via the `http` package.
* **Local Data:** Utilizes `shared_preferences` for managing user tokens and session persistence.

## 🛠️ Tech Stack & Dependencies

The core technologies and Flutter packages used in this project:

| Category | Package / Tool | Purpose |
| :--- | :--- | :--- |
| **Framework** | **Flutter 3.x** | The UI toolkit. |
| **State** | **`provider`** | The primary state management solution. |
| **Networking** | **`http` (or `dio`)** | Handling all simulated API requests. |
| **Local Storage** | **`shared_preferences`** | Storing user sessions and minor local data. |
| **Models** | **`json_annotation` & `json_serializable`** | For robust JSON serialization/deserialization. |
| **Utility** | **`get_it` or `flutter_riverpod` (optional)** | Simple service location/dependency injection. |

## 🚀 Project Structure (Separation of Concerns)

The project adheres to a clean, layered architecture to make the codebase maintainable and testable:
