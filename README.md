# Trubuy - Mobile

Sebuah proyek Flutter sebagai Tugas Mata Kuliah Pemrograman Berbasis Platform oleh Nisrina Annaisha Sarnadi dengan NPM 2306275960 dari kelas PBP F.

<details>
  <summary>Tugas 7</summary>

## Tugas 7

### Elemen Dasar Flutter
1. Membuat file baru bernama ```menu.dart``` pada folder lib dan meng-_import_:
```bash
import 'package:flutter/material.dart';
```

2. Memindahkan kelas ```MyHomePage``` dan ```__MyHomePageState``` dari file ```main.dart``` ke ```menu.dart``` serta meng-_import_:
```bash
import 'package:trubuy_mobile/menu.dart';
```

3. Membuat class baru bernama ```ColorSelect``` untuk mendeklarasikan warna-warna yang dibutuhkan pada file ```menu.dart``` dan mengubah definisi ```colorScheme``` pada file ```main.dart```.
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

4. Mengubah sifat widget halaman menu menjadi stateless dengan mengganti:
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
final String npm = '2306275960'; // NPM
final String name = 'Nisrina Annaisha Sarnadi'; // Nama
final String className = 'PBP F'; // Kelas
```

8. Membuat class ```InfoCard``` pada file ```menu.dart``` untuk membuat card.
```bash
class InfoCard extends StatelessWidget {

  // Kartu informasi yang menampilkan title dan content
  final String title;  // Judul kartu
  final String content;  // Isi kartu

  @override
  Widget build(BuildContext context) {
  ...
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
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

10. Membuat class ```ItemCard``` untuk menampilkan button-button dan menampilkan snackbar yang berisi pesan "Kamu telah menekan tombol [nama button]"
 ```bash
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama
  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color,

      borderRadius: BorderRadius.circular(12),

      // Aksi ketika kartu ditekan
      child: InkWell(
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
      ...
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

11. Mengintegrasikan ```InfoCard``` dan ```ItemCard``` untuk ditampilkan di ```MyHomePage``` dengan mengubah ```Widget build()``` pada class ```MyHomePage``` untuk menampilkan card-card.
```bash
class MyHomePage extends StatelessWidget {
   ...

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
```

## Jawaban Pertanyaan
1. **Stateless Widget dan Stateful Widget**

Stateless widget adalah widget yang tidak dapat diubah setelah widget tersebut dibuat. Contohnya adalah text, Icon, dan RaisedButton. Stateful Widget adalah widget yang dapat mengubah keadaan setelah widget tersebut dibangun sehingga memungkinkan perubahan dinamis berdasarkan interaksi pengguna atau perubahan data. Contohnya adalah Checkbox, RadioButton, dan TetxtField. Oleh karena itu, secara umum, perbedaan keduanya adalah Stateless Widget bersifat statis setelah data ditampilkan sementara Stateful Widget bersifat dinamis dalam menampilkan data.

2. **Widget yang digunakan dan Berfungsi**

- Material: Berfungsi untuk menyediakan latar belakang material design untuk widget.
- Icon: Berfungsi untuk menampilkan icon yang telah disediakan oleh Flutter.
- Scaffold: Berfungsi untuk membuat halaman pada proyek Flutter.
- Text: Berfungsi untuk menampilkan sebuah teks.
- AppBar: Berfungsi untuk menampilkan bar di bagian atas layar.
- Padding: Berfungsi untuk memberikan jarak di sekitar widget dalam body halaman.
- Layout
  - Row: Berfungsi untuk menampikan widget-widget secara horizontal dari kiri ke kanan.
  - Column: Berfungsi untuk menampilkan widget-widget secara vertikal dari atas ke bawah.
- Center: Berfungsi untuk mengatur posisi widget agar berada di tengah.
- GridView: Berfungsi untuk menyusun posisi widget-widget dalam susunan grid.
- Card: Berfungsi untuk membuat kotak dengan efek bayangan di bawahnya.
- Container: Berfungsi untuk membungkus suatu widget lain untuk diatur posisinya.
- InfoCard: Berfungsi untuk menampilkan informasi di card.
- SizedBox: Berfungsi untuk membuat box.
- Inkwell: Berfungsi untuk menambahkan action pada widget.
- SnackBar: Berfungsi untuk memberikan feedback atas suatu action.
    
3. **Fungsi setState() dan variabel yang terdampak**
   
setState() berfungsi untuk memicu dilakukannya refresh pada tampilan aplikasi. Ketika `setState` dipanggil dan nilai variabel dalam state widget berubah, framework akan membangun ulang widget tersebut. Variabel-variabel yang terpengaruh oleh `setState()` adalah variabel yang berada dalam objek state dari komponen tersebut. Perubahan pada variabel-variabel ini akan memicu proses re-rendering komponen, sehingga UI akan diperbarui otomatis untuk menampilkan perubahan data terbaru.

4. **Perbedaan const dan final**

```const``` adalah keyword yang digunakan untuk mendeklarasikan variabel yang valuenya harus ditentukan saat dilakukan compile tetapi tidak dapat diubah selama eksekusi program. final adalah keyword yang digunakan untuk mendeklarasikan variabel yang valuenya ditentukan saat program dijalankan dan tidak dapat diubah selama eksekusi program.

</details>

<details>
  <summary>Tugas 8</summary>

## Tugas 7

### Flutter Navigation, Layouts, Forms, and Input Elements

### Jawaban Pertanyaan
1. **Kegunaan, keuntungan, dan waktu penggunaan const pada Flutter**

```const``` pada Flutter digunakan untuk mendefinisikan objek yang bersifat konstan, atau tidak berubah selama runtime aplikasi. Hal ini berguna untuk widget yang tidak berubah, seperti teks statis atau tata letak yang tidak dinamis.

Keuntungan ```const```:

- Penghematan memori karena objek dengan ```const``` disimpan sebagai satu instance di memori yang tidak perlu diduplikasi setiap digunakan,
- compile-time validation atau kesalahan pada objek ```const``` akan terdeteksi saat kompilasi,
- Optimasi performa karena memungkinkan compiler untuk melakukan optimasi yang dapat meningkatkan performa aplikasi secara signifikan.
  
Waktu penggunaan:

```const``` sebaiknya digunakan saat akan dibuat widget atau variabel yang tidak akan berubah selama aplikasi berjalan, seperti gaya teks tetap, ikon, atau layout statis. ```const``` sebaiknya tidak digunakan untuk data yang bersifat dinamis atau berubah.

2. **Perbandingan penggunaan Column dan Row pada Flutter serta implementasinya**

Column dan Row adalah widget tata letak yang sering digunakan untuk mengatur widget. Column mengatur widget secara vertikal sedangkan Row mengatur widget secara horizontal.

Contoh implementasi:

- Column (Menampilkan teks secara vertikal dari atas ke bawah)
```dart
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Name: $_name'),
    Text('Amount: $_amount'),
    Text('Description: $_description'),
    Text('Price: $_price'),
    Text('Rating: $_rating'),
  ],
),
```
- Row (Menampilkan infocard secara horizontal dari kiri ke kanan)
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
  ],
),
```

3. **Elemen input yang digunakan dan tidak digunakan pada form**

Elemen input yang digunakan adalah ```TextFormField``` untuk input product name, amount, description, price, dan rating. Elemen input yang tidak digunakan contohnya ```Checkbox```, ```Radio```, ```DropdownButton```, dll.

4. **Cara mengatur tema dalam aplikasi agar konsisten dan apakah menggunakan tema**

Saya mengatur tema dalam aplikasi Flutter dengan menggunakan ```ThemeData``` dalam widget ```Material App```. ```ThemeData``` digunakan untuk mengonfigurasi berbagai elemen tampilan dalam aplikasi. Pada aplikasi ini, saya menggunakan teman untuk mengonfigurasi ```colorScheme``` yang dapat digunakan untuk mendefinisikan warna dasar aplikasi (primary). Warna dasar ini saya gunakan untuk mewarnai button, appBar, dan header drawer.

5. **Cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter**

Saya menangani navigasi dalam aplikasi dengan menggunakan ```Navigator```. Saya menggunakan:
 - ```Navigator.push()``` untuk menambahkan halaman baru ke dalam tumpukan navigasi,
 - ```Navigator.pushReplacement()``` untuk mengganti halaman yang sedang diakses dengan halaman baru dan menghapus halaman sebelumnya dari stack,
 - ```Navigator.pop``` menghapus halaman terakhir dari stack dan kembali ke halaman sebelumnya.

</details>
