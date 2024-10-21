import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], 
      appBar: AppBar(
        title: const Text('Produk Gaming', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900], 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildProductCard(
              context,
              'Mouse Gaming',
              'assets/mouse.jpg',
              'Rp 500.000',
              'Mouse gaming adalah jenis mouse khusus yang dirancang untuk memberikan performa terbaik saat bermain game...',
            ),
            _buildProductCard(
              context,
              'Keyboard Gaming',
              'assets/keyboard.jpg',
              'Rp 1.000.000',
              'Keyboard gaming memiliki fitur-fitur tambahan yang membuatnya lebih unggul dibandingkan keyboard biasa...',
            ),
            _buildProductCard(
              context,
              'Headset Gaming',
              'assets/headset.jpg',
              'Rp 750.000',
              'Headset gaming adalah perangkat audio yang dirancang khusus untuk para gamer dengan kualitas suara terbaik...',
            ),
            _buildProductCard(
              context,
              'Kursi Gaming',
              'assets/kursi.jpg',
              'Rp 2.500.000',
              'Kursi gaming dirancang untuk kenyamanan maksimal selama bermain game dalam waktu yang lama...',
            ),
            _buildProductCard(
              context,
              'Monitor Gaming',
              'assets/monitor.jpeg',
              'Rp 5.000.000',
              'Monitor gaming memberikan kualitas gambar terbaik dengan refresh rate tinggi dan resolusi yang tajam...',
            ),
            _buildProductCard(
              context,
              'PC Gaming',
              'assets/pc.jpg',
              'Rp 15.000.000',
              'PC gaming memberikan performa maksimal dengan komponen-komponen terbaik untuk gaming...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String title, String imagePath, String price, String description) {
    return Card(
      color: Colors.grey[800], 
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        subtitle: Text(price, style: const TextStyle(color: Colors.blueAccent)),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.grey[850], 
                title: Text(title, style: const TextStyle(color: Colors.white)),
                content: Text(description, style: const TextStyle(color: Colors.white)),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK', style: TextStyle(color: Colors.blueAccent)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
