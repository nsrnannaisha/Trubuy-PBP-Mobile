# Trubuy - Mobile

Sebuah proyek Fultter sebagai Tugas Mata Kuliah Pemrograman Berbasis Platform oleh Nisrina Annaisha Sarnadi dengan NPM 2306275960.

<details>
  <summary>Tugas 7</summary>

## Tugas 7

### Elemen Dasar Flutter
1. Membuat file baru bernama ```menu.dart``` pada folder lib dan meng_import_:
```bash
import 'package:flutter/material.dart';
```

2. Memindahkan kelas ```MyHomePage``` dan ```__MyHomePageState``` dari file ```main.dart``` ke ```menu.dart``` serta meng_import_:
```bash
import 'package:trubuy_mobile/menu.dart';
```

3. Membuat class baru bernama ```ColorSelect``` untuk deklarasi awal warna-warna yang dibutuhkan pada file ```menu.dart``` dan mengubah definisi ```colorScheme``` pada file ```main.dart```.
```bash
class ColorSelect {
  static const cbuttons = Color(0xFFD2B48C);
  static const button1 = Color(0xFF695A46);
  static const button2 = Color(0xFF9D8769);
  static const Color backgroundColor = Color(0xFFF3F3F2);
}

colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorSelect.cbuttons,
        ),
```

4. Mengubah sifat widget halaman menu menjadi stateless dengan mengganti 
```bash
const MyHomePage(title: 'Flutter Demo Home Page')
```
dengan 
```bash
MyHomePage(),
```

5. Mengubah sifat widget dari stateful menjadi stateless dengan mengganti ```... extends StatefulWidget``` menjadi ```extends StatelessWidget```  pada class ```MyHomePage```.

6. Menambahkan
```bash
MyHomePage({super.key});
```
sebagai constructor class MyHomePage, menghapus seluruh class 
```bash
_MyHomePageState extends State<MyHomePage>,
```
dan menambah widget build
```bash
class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
	return Scaffold(
	    ... 
	);
    }
}
```

7. Mendeklarasikan variabel informasi pengguna untuk membuat Card.
```bash
final String npm = '5000000000'; // NPM
final String name = 'Gedagedi Gedagedago'; // Nama
final String className = 'PBP S'; // Kelas
```

8. Membuat class ```InfoCard``` pada file ```menu.dart``` untuk membuat card.
```bash
final String npm = '5000000000'; // NPM
final String name = 'Gedagedi Gedagedago'; // Nama
final String className = 'PBP S'; // Kelas
```

9. Membuat class ```ItemHomePage``` berisi atribut-atribut card.
```bash
class ItemHomepage {
     final String name;
     final IconData icon;
     final Color color;

     ItemHomepage(this.name, this.icon, this.color);
}
```

10. Membuat list dari ```ItemHomePage``` berisi button pada kelas ```MyHomePage```.
```bash
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Daftar Produk", Icons.list, ColorSelect.button1),
  ItemHomepage("Tambah Produk", Icons.add, ColorSelect.button2),
  ItemHomepage("Logout", Icons.logout, ColorSelect.cbuttons),
```

10. Membuat class ```ItemCard``` untuk menampilkan button-button dan mengganti definisi ```color``` menjadi ```item.color```.
  
11. Mengintegrasikan ```InfoCard``` dan ```ItemCard``` untuk ditampilkan di ```MyHomePage``` dengan mengubah ```Widget build()``` pada class ```MyHomePage``` untuk menampilkan card-card.

1. **Stateless Widget dan Stateful Widget**

Stateless widget adalah widget yang tidak dapat diubah setelah widget tersebut dibuat. Contohnya adalah text, Icon, dan RaisedButton. Stateful Widget adalah widget yang dapat mengubah keadaan setelah widget tersebut dibangun sehingga memungkinkan perubahan dinamis berdasarkan interaksi pengguna atau perubahan data. Contohnya adalah Checkbox, RadioButton, dan TetxtField. Oleh karena itu, secar umum, perbedaan keduanya adalah Stateless Widget bersifat statis setelah data ditampilkan sementara Stateful Widget bersifat dinamis dalam menampilkan data.

2. **Widget yang digunakan dan Berfungsi**

- Scaffold: Berfungsi untuk membuat halaman pada proyek Flutter.
- AppBar: Berfungsi untuk menampilkan bar di bagian atas layar.
- Stateless: Berfungsi untuk menampilkan hal-hal yang sifatnya statis.
- Padding: Berfungsi untuk memberikan ruang di sekitar widget anaknya.
- Layout
  - Row: Berfungsi untuk menampikan widget-widget secara horizontal dari kiri ke kanan.
  - Column: Berfungsi untuk menampilkan widget-widget secara vertikal dari atas ke bawah.
  - Center: Berfungsi untuk mengatur posisi widget agar berada di tengah.
  - Text: Berfungsi untuk menampilkan sebuah teks.
  - Icon: Berfungsi untuk menampilkan icon yang telah disediakan oleh Flutter.
  - Container: Berfungsi untuk membungkus widget lain untuk diatur posisinya.
  - SizedBox: Berfungsi untuk membuat box.
  - Inkwell: Berfungsi untuk menambahkan action pada widget.
  - InfoCard: Berfungsi untuk menampilkan informasi.
  - Card: Berfungsi untuk membuat kotak dengan efek bayangan di bawahnya.
  - GridView: Berfungsi untuk menyusun anak-anaknya dalam grid.
  - Material: Fungsi ini menyediakan latar belakang material design untuk widget anaknya.
  - SnackBar: Berfungsi untuk memberikan umpan balik kepada pengguna
    
3. **Fungsi setState() dan variabel yang terdampak**

Fungsi setState adalah untuk memicu pembaruan UI untuk mencerminkan perubahan yang dilakukan dan menyimpan status seiring dilakukan interaksi oleh pengguna. Variabel yang dapat terdampak oleh setState() adalah variabel yang didefinisikan dalam class State dari widget, seperti variabel instance yang menyimpan informasi untuk membangun UI, serta list atau map yang berisi data dinamis. Misalnya, jika ada variabel integer yang menghitung jumlah klik tombol, memanggil setState() saat tombol ditekan akan mengubah nilai variabel tersebut dan memperbarui tampilan yang menampilkan jumlah klik.

5. **Perbedaan const dan final**

const adalah keyword yang digunakan untuk mendeklarasikan variabel yang valuenya harud ditentukan saat dilakukan complite tetapu tidak dapat diubah selama eksekusi program. final adalah keyword yang digunakan untuk mendeklarasikan variabel yang valuenya ditentukan saat program dijalankan dan tidak dapat diubah kembali.

</details>
