import 'package:get/get.dart';
import '../models/product_model.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });
}

class CartController extends GetxController {
  final RxList<CartItem> cartItems = <CartItem>[].obs;

  void addToCart(Product product, {int quantity = 1}) {
    // Check if product already exists in cart
    final existingItem = cartItems.firstWhereOrNull(
      (item) => item.product.id == product.id,
    );

    if (existingItem != null) {
      existingItem.quantity += quantity;
      cartItems.refresh();
    } else {
      cartItems.add(CartItem(product: product, quantity: quantity));
    }
  }

  void removeFromCart(int productId) {
    cartItems.removeWhere((item) => item.product.id == productId);
  }

  void updateQuantity(int productId, int quantity) {
    final item = cartItems.firstWhereOrNull(
      (item) => item.product.id == productId,
    );
    if (item != null) {
      item.quantity = quantity;
      if (quantity <= 0) {
        removeFromCart(productId);
      } else {
        cartItems.refresh();
      }
    }
  }

  double get totalPrice {
    double total = 0;
    for (var item in cartItems) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  int get totalItems {
    int total = 0;
    for (var item in cartItems) {
      total += item.quantity;
    }
    return total;
  }

  void clearCart() {
    cartItems.clear();
  }
}
