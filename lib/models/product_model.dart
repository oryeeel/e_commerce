class Product {
  final int id;
  final String name;
  final String category;
  final double price;
  final String image;
  final String description;
  final double rating;
  final int reviews;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    required this.description,
    required this.rating,
    required this.reviews,
  });
}

// Sample product list
List<Product> sampleProducts = [
  Product(
    id: 1,
    name: "Wireless Headphones",
    category: "Electronics",
    price: 49.99,
    image: "https://via.placeholder.com/300x300?text=Headphones",
    description: "High-quality wireless headphones with noise cancellation",
    rating: 4.5,
    reviews: 128,
  ),
  Product(
    id: 2,
    name: "Smart Watch",
    category: "Electronics",
    price: 199.99,
    image: "https://via.placeholder.com/300x300?text=Smart+Watch",
    description: "Feature-rich smartwatch with health tracking",
    rating: 4.3,
    reviews: 95,
  ),
  Product(
    id: 3,
    name: "Camera",
    category: "Electronics",
    price: 599.99,
    image: "https://via.placeholder.com/300x300?text=Camera",
    description: "Professional digital camera for photography",
    rating: 4.7,
    reviews: 156,
  ),
  Product(
    id: 4,
    name: "Laptop Backpack",
    category: "Accessories",
    price: 39.99,
    image: "https://via.placeholder.com/300x300?text=Backpack",
    description: "Durable backpack with laptop compartment",
    rating: 4.2,
    reviews: 78,
  ),
  Product(
    id: 5,
    name: "USB-C Cable",
    category: "Accessories",
    price: 12.99,
    image: "https://via.placeholder.com/300x300?text=USB+Cable",
    description: "Fast charging USB-C cable",
    rating: 4.4,
    reviews: 203,
  ),
  Product(
    id: 6,
    name: "Screen Protector",
    category: "Accessories",
    price: 9.99,
    image: "https://via.placeholder.com/300x300?text=Screen+Protector",
    description: "Tempered glass screen protector",
    rating: 4.1,
    reviews: 156,
  ),
  Product(
    id: 7,
    name: "Phone Case",
    category: "Accessories",
    price: 19.99,
    image: "https://via.placeholder.com/300x300?text=Phone+Case",
    description: "Protective phone case with premium material",
    rating: 4.6,
    reviews: 234,
  ),
  Product(
    id: 8,
    name: "Portable Charger",
    category: "Electronics",
    price: 29.99,
    image: "https://via.placeholder.com/300x300?text=Charger",
    description: "20000mAh portable power bank",
    rating: 4.4,
    reviews: 189,
  ),
];
