# MyShop - A Flutter Shopping App

## Overview

MyShop is a simple shopping app built with Flutter and Firebase. It allows users to browse products, add them to a cart, and place orders. It also features user authentication and data persistence with Firestore.

## Features

*   **User Authentication:** Users can sign up and log in to their accounts.
*   **Product Listing:** View a list of available products fetched from Firestore.
*   **Product Details:** View detailed information about a single product.
*   **Shopping Cart:** Add products to a shopping cart and view the items in the cart.
*   **Order Placement:** Place an order for the items in the cart, which is then saved to Firestore.
*   **Order History:** View a list of past orders.
*   **Favorite Products:** Mark products as favorites.
*   **Data Persistence:** Product data, user data, and order data are stored in Cloud Firestore.
*   **State Management:** The app uses the `provider` package for state management.
*   **Theming:** The app supports both light and dark themes.
*   **Navigation Drawer:** A side drawer for easy navigation between the shop, orders, and theme toggle.

## Style and Design

*   **Theming:** The app uses Material 3 theming with a purple and amber color scheme.
*   **Fonts:** The app uses the Lato font from Google Fonts.
*   **Layout:** The app uses a grid layout for the product overview screen and a list layout for the cart and orders screens.

## Project Structure

```
.
├── lib
│   ├── auth_wrapper.dart
│   ├── models
│   │   ├── cart.dart
│   │   ├── order.dart
│   │   └── product.dart
│   ├── providers
│   │   ├── cart_provider.dart
│   │   ├── order_provider.dart
│   │   ├── product_provider.dart
│   │   └── theme_provider.dart
│   ├── screens
│   │   ├── auth
│   │   │   └── auth_screen.dart
│   │   ├── cart_screen.dart
│   │   ├── orders_screen.dart
│   │   ├── product_detail_screen.dart
│   │   └── products_overview_screen.dart
│   ├── services
│   │   ├── auth_service.dart
│   │   └── product_service.dart
│   ├── widgets
│   │   ├── app_drawer.dart
│   │   ├── cart_item.dart
│   │   ├── order_item.dart
│   │   ├── product_grid.dart
│   │   └── product_item.dart
│   └── main.dart
├── pubspec.yaml
└── blueprint.md
```
