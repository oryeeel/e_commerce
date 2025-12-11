import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../const/colors.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purpleColor,
        title: const Text(
          "Product Details",
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image
            Container(
              height: 300,
              width: double.infinity,
              color: lightGrey,
              child: Image.network(
                widget.product.image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Icon(
                      Icons.image_not_supported,
                      color: darkGrey,
                      size: 60,
                    ),
                  );
                },
              ),
            ),
            // Product details
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product name
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: purpleColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Category
                  Text(
                    "Category: ${widget.product.category}",
                    style: const TextStyle(
                      fontSize: 14,
                      color: darkGrey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Rating
                  Row(
                    children: [
                      const Icon(Icons.star, color: golden, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        "${widget.product.rating}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "(${widget.product.reviews} reviews)",
                        style: const TextStyle(
                          fontSize: 14,
                          color: darkGrey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Price
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: darkGrey,
                          ),
                        ),
                        Text(
                          "\$${widget.product.price.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Description
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: purpleColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.product.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: fontGrey,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Quantity selector
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "Quantity:",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity > 1) quantity--;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(Icons.remove,
                                    size: 16, color: purpleColor),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              "$quantity",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 12),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(Icons.add,
                                    size: 16, color: purpleColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Add to cart button
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "$quantity ${widget.product.name}(s) added to cart!",
                            style: const TextStyle(color: white),
                          ),
                          backgroundColor: green,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "Add to Cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Buy now button
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Processing order for $quantity ${widget.product.name}(s)...",
                            style: const TextStyle(color: white),
                          ),
                          backgroundColor: green,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "Buy Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
