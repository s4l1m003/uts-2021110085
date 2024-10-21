class CartItem {
  final String title;
  final String price;
  int quantity;

  CartItem({
    required this.title,
    required this.price,
    this.quantity = 1, // Default quantity 1
  });

  double get totalPrice {
    return double.parse(price.replaceAll('Rp ', '').replaceAll('.', '')) * quantity;
  }
}
