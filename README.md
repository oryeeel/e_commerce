# eMart - Simple E-Commerce App

A modern and user-friendly e-commerce Flutter application. This app allows users to browse products, view product details, and manage their shopping cart.

## Features

✅ **No Login Required** - Direct access to the app without authentication
✅ **Product Browse** - View all products with images, prices, and ratings
✅ **Category Filter** - Filter products by category (All, Electronics, Accessories)
✅ **Product Details** - View detailed information about each product
✅ **Shopping Cart** - Add products to cart with quantity management
✅ **Responsive Design** - Clean and modern UI with smooth navigation
✅ **Search & Filter** - Easy navigation through product categories

## Project Structure

```
lib/
├── main.dart                          # App entry point
├── const/
│   ├── colors.dart                    # Color constants
│   ├── strings.dart                   # String constants
│   └── lists.dart                     # List constants
├── models/
│   ├── product_model.dart             # Product data model
│   ├── category_model.dart            # Category model
│   └── cart.dart                      # Cart and CartController
├── views/
│   ├── home_screen.dart               # Home/Products screen
│   ├── product_detail_screen.dart     # Product details page
│   └── auth_screen/                   # Removed (no login needed)
└── services/
    └── category_model.json            # Category data

```

## Getting Started

### Prerequisites
- Flutter SDK: >=2.17.3 <3.0.0
- Dart
- Android Studio / Xcode (for running on emulator/device)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd Flutter_EMart_SellerApp-master
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Dependencies

- **flutter**: Core Flutter framework
- **cupertino_icons**: iOS-style icons
- **get**: State management and navigation

## Removed Dependencies

The following packages have been removed as they're no longer needed:
- firebase_core
- firebase_auth
- firebase_storage
- cloud_firestore
- image_picker
- velocity_x

## Key Components

### HomeScreen
- Displays product grid with 2 columns
- Category filter chips
- Product cards with ratings and prices
- Navigation to product details

### ProductDetailScreen
- Full product information display
- Quantity selector
- Add to Cart button
- Buy Now button
- Product rating and reviews

### CartController (GetX)
- Manage cart items
- Add/remove products
- Update quantities
- Calculate total price

## Sample Products

The app comes with 8 sample products including:
- Wireless Headphones
- Smart Watch
- Camera
- Laptop Backpack
- USB-C Cable
- Screen Protector
- Phone Case
- Portable Charger

## Color Scheme

- **Primary**: Purple (#2E294E)
- **Secondary**: Golden (#F8B55B)
- **Success**: Green (#34A853)
- **Background**: Light Grey (#EFEFEF)

## Future Enhancements

- [ ] Implement actual cart screen
- [ ] Add product search functionality
- [ ] Add user reviews
- [ ] Implement checkout process
- [ ] Add payment integration
- [ ] Add wishlist feature
- [ ] Backend integration for real products

## Getting Started with Flutter

For help getting started with Flutter development, view the [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
