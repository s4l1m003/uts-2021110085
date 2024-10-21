import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'title': 'Mouse Gaming',
      'price': 'Rp 500.000',
      'description': 'Mouse gaming adalah jenis mouse khusus yang dirancang untuk memberikan performa terbaik saat bermain game. Fitur-fitur tambahan seperti tombol yang dapat diprogram, sensor yang lebih akurat, dan desain ergonomis membuat mouse gaming berbeda dari mouse biasa.dengan dpi hingga mencapai 3200 bisa dipakai dengan segala tipe gaming mulai dari fps,moba,hingga balapan',
      'image': 'assets/mouse.jpg',
    },
    {
      'title': 'Keyboard Gaming',
      'price': 'Rp 1.000.000',
      'description': 'Keyboard gaming adalah perangkat input yang dirancang khusus untuk para gamer. Sama seperti mouse gaming, keyboard gaming memiliki fitur-fitur tambahan yang membuatnya lebih unggul dibandingkan keyboard biasa saat digunakan untuk bermain game.dengan fitur(-Switch Mekanik: Ini adalah salah satu fitur paling menonjol pada keyboard gaming. Switch mekanik memberikan sensasi dan suara yang khas saat ditekan, serta respon yang lebih cepat dibandingkan dengan keyboard membran. Ada beberapa jenis switch mekanik dengan karakteristik yang berbeda, seperti linear, tactile, dan clicky,Backlighting: Pencahayaan pada tombol keyboard tidak hanya untuk estetika, tetapi juga membantu kamu melihat tombol dengan jelas, terutama dalam kondisi minim cahaya.Tombol Macro: Tombol tambahan yang dapat diprogram untuk menjalankan serangkaian perintah dengan sekali tekan. Ini sangat berguna untuk menjalankan kombinasi tombol yang rumit dalam game.Polling Rate: Sama seperti mouse, keyboard juga memiliki polling rate yang menunjukkan seberapa sering keyboard mengirimkan data ke komputer. Polling rate yang lebih tinggi berarti respon yang lebih cepat.Rollover: Fitur yang memungkinkan kamu menekan beberapa tombol secara bersamaan tanpa adanya konflik. Ini sangat penting untuk game yang membutuhkan banyak input sekaligus.',
      'image': 'assets/keyboard.jpg',
    },
    {
      'title': 'Headset Gaming',
      'price': 'Rp 750.000',
      'description': 'Headset gaming adalah perangkat audio yang dirancang khusus untuk para gamer. Fungsi utamanya adalah untuk memberikan pengalaman suara yang imersif saat bermain game, sehingga kamu bisa lebih fokus dan menikmati permainan.dengan tambahan :Kualitas suara: Headset gaming umumnya memiliki kualitas suara yang lebih baik, dengan bass yang lebih dalam dan suara yang lebih jernih. Ini penting untuk mendengar efek suara dalam game dengan jelas.Mikrofon: Mikrofon pada headset gaming biasanya memiliki kualitas yang lebih baik, dengan noise cancellation yang lebih baik sehingga suara kamu terdengar lebih jelas saat berkomunikasi dengan teman satu tim.Desain: Headset gaming dirancang dengan kenyamanan sebagai prioritas utama, dengan bantalan telinga yang empuk dan desain yang ringan.Fitur tambahan: Beberapa headset gaming dilengkapi dengan fitur tambahan seperti surround sound, lighting, dan software khusus untuk kustomisasi.',
      'image': 'assets/headset.jpg',
    },
    {
      'title': 'Kursi Gaming',
      'price': 'Rp 2.500.000',
      'description': 'Kursi gaming adalah jenis kursi khusus yang dirancang dengan mempertimbangkan kebutuhan para gamer. Kursi ini didesain untuk memberikan kenyamanan dan dukungan optimal saat bermain game dalam waktu yang lama.serta fitur-fitur yang di kursi gaming:Sandaran yang dapat disesuaikan: Baik ketinggian maupun sudut kemiringan dapat disesuaikan untuk memberikan dukungan optimal pada punggung.Bantalan lumbar: Memberikan dukungan pada bagian bawah punggung.Bantalan kepala: Memberikan dukungan pada leher dan kepala.Sandaran tangan yang dapat disesuaikan: Memungkinkan Anda untuk mengatur posisi tangan dengan nyaman.Basis yang kokoh: Menjamin stabilitas kursi saat digunakan.Material berkualitas: Biasanya menggunakan bahan yang tahan lama dan mudah dibersihkan.',
      'image': 'assets/kursi.jpg',
    },
    {
      'title': 'Monitor Gaming',
      'price': 'Rp 5.000.000',
      'description': 'Monitor gaming adalah jenis monitor yang dirancang khusus untuk memberikan pengalaman bermain game yang optimal. Dengan spesifikasi yang lebih tinggi dibandingkan monitor biasa, monitor gaming dapat menampilkan gambar dengan kualitas yang lebih baik, respon yang lebih cepat, dan fitur-fitur tambahan yang mendukung aktivitas gaming.Kualitas gambar: Monitor gaming memiliki resolusi yang lebih tinggi (seperti QHD atau 4K), refresh rate yang lebih cepat (di atas 60Hz), dan warna yang lebih akurat, sehingga gambar yang ditampilkan lebih detail, halus, dan realistis.Respon time: Waktu respons yang cepat (di bawah 1ms) membuat gambar yang ditampilkan lebih responsif, sehingga gerakan dalam game terlihat lebih mulus dan tidak ada ghosting (bayangan samar-samar).Fitur tambahan: Banyak monitor gaming dilengkapi dengan fitur tambahan seperti Adaptive Sync (AMD FreeSync atau NVIDIA G-Sync) untuk mengurangi screen tearing, HDR (High Dynamic Range) untuk kontras yang lebih tinggi, dan berbagai mode tampilan yang dapat disesuaikan.',
      'image': 'assets/monitor.jpeg',
    },
    {
      'title': 'PC Gaming',
      'price': 'Rp 15.000.000',
      'description': ':PC gaming adalah platform permainan yang menggunakan komputer pribadi sebagai perangkat utamanya. Dibandingkan dengan konsol game, PC gaming menawarkan fleksibilitas yang lebih tinggi dalam hal spesifikasi, kustomisasi, dan pilihan game.komponen:intel core i7,AMD Ryzen 7,NVIDIA GeForce RTX 30 Series,AMD Radeon RX 6000 Series,RAM 32 GB DDR5,PSU 750W,CASING kipas angin',
      'image': 'assets/pc.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], 
      appBar: AppBar(
        title: const Text('Barang-Barang Gaming', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900], // Set AppBar background color
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.asset(product['image']!, width: 100, height: 100),
            title: Text(product['title']!, style: const TextStyle(color: Colors.white)),
            subtitle: Text(product['price']!, style: const TextStyle(color: Colors.blueAccent)),
            onTap: () {
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
      backgroundColor: Colors.grey[850], 
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900], 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(image, width: 200, height: 200),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              price,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PurchasePage(
                title: title,
                price: price,
                image: image,
              ),
            ),
          );
        },
        backgroundColor: Colors.green, 
        child: const Icon(Icons.shopping_cart), 
      ),
    );
  }
}

class PurchasePage extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  const PurchasePage({
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850], 
      appBar: AppBar(
        title: const Text('Pembelian Barang', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(image, width: 200, height: 200),
            ),
            const SizedBox(height: 24),
            Text(
              'Barang: $title',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              'Harga: $price',
              style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Lanjut ke Pembayaran'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.blue, // Button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
