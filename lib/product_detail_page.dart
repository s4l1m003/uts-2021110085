import 'package:flutter/material.dart';
import 'package:myapp/checkout_page.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class ProductDetailPage extends StatefulWidget {
  final String title;
  final String price;
  final String description;
  final String image;

  const ProductDetailPage({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], 
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900], 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(widget.image, width: 200, height: 200),
            ),
            const SizedBox(height: 24),
            Text(
              widget.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              widget.price,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 16),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white),
                      onPressed: () {
                        if (_quantity > 1) {
                          setState(() {
                            _quantity--;
                          });
                        }
                      },
                    ),
                    Text(
                      _quantity.toString(),
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        if (_quantity < 99) {
                          setState(() {
                            _quantity++;
                          });
                        }
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CartProvider>(context, listen: false)
                        .addItem(widget.title, widget.price);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Ditambahkan ke keranjang'),
                      duration: const Duration(seconds: 2),
                    ));
                  },
                  child: const Text('Tambah ke Keranjang'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        backgroundColor: Colors.green, 
        child: const Icon(Icons.shopping_cart), 
      ),
    );
  }
}
