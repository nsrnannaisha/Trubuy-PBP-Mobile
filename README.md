# Trubuy - Mobile

Sebuah proyek Fultter sebagai Tugas Mata Kuliah Pemrograman Berbasis Platform oleh Nisrina Annaisha Sarnadi dengan NPM 2306275960.

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
- Stateless: Berfungsi untuk menampilkan hal-hal yang sifatnya statis.
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

const adalah keyword yang digunakan untuk mendeklarasikan variabel yang valuenya harus ditentukan saat dilakukan compile tetapi tidak dapat diubah selama eksekusi program. final adalah keyword yang digunakan untuk mendeklarasikan variabel yang valuenya ditentukan saat program dijalankan dan tidak dapat diubah selama eksekusi program.

</details>
