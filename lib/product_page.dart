import 'package:flutter/material.dart';
import 'product_detail_page.dart';

class ProductPage extends StatelessWidget {
  // List of gaming products
  final List<Map<String, String>> products = [
    {
      'title': 'Mouse Gaming',
      'image': 'assets/mouse.jpg',
      'price': 'Rp 500.000',
      'description': 'Mouse gaming adalah jenis mouse khusus yang dirancang untuk memberikan performa terbaik saat bermain game. Fitur-fitur tambahan seperti tombol yang dapat diprogram, sensor yang lebih akurat, dan desain ergonomis membuat mouse gaming berbeda dari mouse biasa. Dengan DPI hingga mencapai 3200, bisa dipakai dengan segala tipe gaming mulai dari FPS, MOBA, hingga balapan.'
    },
    {
      'title': 'Keyboard Gaming',
      'image': 'assets/keyboard.jpg',
      'price': 'Rp 1.000.000',
      'description': 'Keyboard gaming adalah perangkat input yang dirancang khusus untuk para gamer. Fitur: Switch Mekanik, Backlighting, Tombol Macro, Polling Rate, Rollover. Sangat cocok untuk gaming dengan fitur tambahan yang mendukung performa terbaik.'
    },
    {
      'title': 'Headset Gaming',
      'image': 'assets/headset.jpg',
      'price': 'Rp 750.000',
      'description': 'Headset gaming adalah perangkat audio yang dirancang untuk memberikan pengalaman suara yang imersif. Fitur tambahan seperti surround sound dan noise cancellation sangat penting untuk mendengar efek suara dalam game dengan jelas.'
    },
    {
      'title': 'Kursi Gaming',
      'image': 'assets/kursi.jpg',
      'price': 'Rp 2.500.000',
      'description': 'Kursi gaming dirancang dengan kenyamanan sebagai prioritas utama, dengan fitur sandaran yang dapat disesuaikan, bantalan lumbar, bantalan kepala, dan sandaran tangan yang nyaman.'
    },
    {
      'title': 'Monitor Gaming',
      'image': 'assets/monitor.jpeg',
      'price': 'Rp 5.000.000',
      'description': 'Monitor gaming menawarkan kualitas gambar yang lebih tinggi, refresh rate cepat, dan respon time di bawah 1ms. Fitur tambahan seperti Adaptive Sync dan HDR meningkatkan pengalaman bermain game.'
    },
    {
      'title': 'PC Gaming',
      'image': 'assets/pc.jpg',
      'price': 'Rp 15.000.000',
      'description': 'PC gaming dengan spesifikasi tinggi: Intel Core i7, AMD Ryzen 7, NVIDIA GeForce RTX 30 Series, RAM 32GB DDR5. Ideal untuk gaming dengan performa tinggi dan fleksibilitas yang lebih baik dibandingkan konsol game.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barang-Barang Gaming'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.asset(product['image']!, width: 50, height: 50),
            title: Text(product['title']!),
            onTap: () {
              // Navigate to the detail page when an item is clicked
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    title: product['title']!,
                    price: product['price']!,
                    description: product['description']!,
                    image: product['image']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
