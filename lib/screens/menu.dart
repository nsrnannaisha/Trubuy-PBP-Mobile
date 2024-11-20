import 'package:flutter/material.dart';
import 'package:trubuy_mobile/widgets/left_drawer.dart';
import 'package:trubuy_mobile/widgets/product_card.dart';

// Inisialisasi warna
class ColorSelect {
  static const cbuttons = Color(0xFFD2B48C);
  static const button1 = Color(0xFF695A46);
  static const button2 = Color(0xFF9D8769);
  static const Color backgroundColor = Color(0xFFF3F3F2);
}

class MyHomePage extends StatelessWidget {
  final String npm = '2306275960'; // NPM
  final String name = 'Nisrina Annaisha Sarnadi'; // Nama
  final String className = 'PBP F'; // Kelas

  // Definisikan items
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list, ColorSelect.button1),
    ItemHomepage("Tambah Produk", Icons.add, ColorSelect.button2),
    ItemHomepage("Logout", Icons.logout, ColorSelect.cbuttons),
  ];

  MyHomePage({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        // Background color generally
        backgroundColor: ColorSelect.backgroundColor,
        // AppBar
        appBar: AppBar(
          // Judul aplikasi "Trubuy"
          title: const Text(
            'Trubuy',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Background color appBar
          backgroundColor: Theme.of(context).colorScheme.primary,
          // Mengganti warna icon drawer menjadi putih
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
        drawer: const LeftDrawer(),
        // Body halaman 
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          // Menyusun widget secara vertikal dalam sebuah kolom
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row untuk menampilkan 3 InfoCard secara horizontal
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'NPM', content: npm),
                  InfoCard(title: 'Name', content: name),
                  InfoCard(title: 'Class', content: className),
                ],
              ),

              const SizedBox(height: 16.0),

              // Menempatkan widget di tengah halaman
              Center(
                child: Column(
                  // Menyusun teks dan grid produk
                  children: [
                    // Menampilkan welcome message
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Welcome to Trubuy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),

                    // Grid untuk menampilkan ItemCard
                    GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,

                      // Menampilkan ItemCard untuk setiap item
                      children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
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

// Kartu informasi yang menampilkan title dan content
class InfoCard extends StatelessWidget {
  final String title;  // Judul kartu
  final String content;  // Isi kartu

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),

        // Menyusun title dan content secara vertikal
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}