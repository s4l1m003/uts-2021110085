import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[850], // Dark gray background
      appBar: AppBar(
        title: const Text('Checkout', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Barang yang dibeli:',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  final product = cart.items.values.toList()[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(product.quantity.toString(), style: TextStyle(color: Colors.black)),
                    ),
                    title: Text(product.title, style: const TextStyle(color: Colors.white)),
                    subtitle: Text('Rp ${product.totalPrice.toStringAsFixed(0)}', style: const TextStyle(color: Colors.blueAccent)),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        cart.updateQuantity(product.title, 0); // Remove product
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Total Harga: Rp ${cart.totalAmount.toStringAsFixed(0)}',
              style: const TextStyle(color: Colors.blueAccent, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cart.clearCart();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Pembelian Selesai'),
                  duration: const Duration(seconds: 2),
                ));
              },
              child: const Text('Lanjut ke Pembayaran'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
