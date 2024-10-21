import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(image, width: 200, height: 200),
            ),
            const SizedBox(height: 16),
            Text(
              'Harga: $price',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
