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

Elemen input yang digunakan adalah ```TextFormField``` untuk meminta input product name, amount, description, price, dan rating. Selain itu, ```ElevatedButton``` untuk menyimpan input data yang sudah di input pada form sehingga saat button  ```save``` ditekan, detail produk akan ditampilkan. 

Elemen input yang tidak digunakan contohnya ```Checkbox```, ```Radio```, ```DropdownButton```, ```Slider```, dll.

4. **Cara mengatur tema dalam aplikasi agar konsisten dan apakah menggunakan tema**

Saya mengatur tema dalam aplikasi Flutter dengan menggunakan ```ThemeData``` dalam widget ```Material App```. ```ThemeData``` digunakan untuk mengonfigurasi berbagai elemen tampilan dalam aplikasi. Pada aplikasi ini, saya menggunakan teman untuk mengonfigurasi ```colorScheme``` yang dapat digunakan untuk mendefinisikan warna dasar aplikasi (primary). Warna dasar ini saya gunakan untuk mewarnai button, appBar, dan header drawer.

5. **Cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter**

Saya menangani navigasi dalam aplikasi dengan menggunakan ```Navigator```. Saya menggunakan:
 - ```Navigator.push()``` untuk menambahkan halaman baru ke dalam tumpukan navigasi,
 - ```Navigator.pushReplacement()``` untuk mengganti halaman yang sedang diakses dengan halaman baru dan menghapus halaman sebelumnya dari stack,
 - ```Navigator.pop``` menghapus halaman terakhir dari stack dan kembali ke halaman sebelumnya.

</details>

<details>
  <summary>Tugas 9</summary>
	
## Tugas 9
	
### Integrasi Layanan Web Django dengan Aplikasi Flutter

1. Membuat django-app bernama authentication pada project Django yang telah dibuat.

2. Menambahkan authentication ke ```INSTALLED_APPS``` pada main project settings.py aplikasi Django.

3. Menambahkan ```django-cors-headers``` ke ```requirements.txt dan menyalakan virtual environment Python 

4. Menjalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan.

5. Menambahkan ```corsheaders``` ke ```INSTALLED_APPS``` pada main project settings.py aplikasi Django.

6. Menambahkan ```corsheaders.middleware.CorsMiddleware``` ke ```MIDDLEWARE``` pada main project settings.py aplikasi Django.

7. Menambahkan variabel pada main project settings.py aplikasi Django.
```bash
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
Menambahkan 10.0.2.2 pada ALLOWED_HOSTS di berkas settings.py.
```

8. Menambahkan IP address 127.0.0.1:8000 di settings.py

9. Membuat method login pada authentication/views.py.

10. Membuat file urls.py pada sub direktori authentication dan menambahkan URL routing untuk login.

11. Menambahkan ```path('auth/', include('authentication.urls')),``` urls.py di subdirektori trubuy di django.

12. Menginstal package untuk dapat mengakses library flutter.

13. Memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider dan menambahkan import:
```bash
import 'package:pbp_django_auth/pbp_django_auth.dart'; 
import 'package:provider/provider.dart';
```

14. Membuat file baru pada folder screens dengan nama login.dart dan mengisinya dengan class, methodnya, fungsionaltiasnya, dan import yang dibutuhkan.

15. Mengubah home: MyHomePage() menjadi home: const LoginPage() pada file main.dart Widget MaterialApp(...).

16. Membuat method register pada authentication/views.py pada proyek django dan menambahkan import yang dibutuhkan.

17. Menambahkan path('register/', register, name='register'), pada file authentication/urls.py.

18. Membuat berkas baru pada folder screens dengan nama register.dart dan mengisinya dengan class, methodnya, fungsionaltiasnya, dan import yang dibutuhkan.

19. Membuka endpoint JSON dan menyalin datanya ke situs Quicktype lalu Copy Code sebagai isi dari file baru product_entry.dart pada subdirektori baru models pada subdirektori lib. 

20. Melakukan flutter pub add http pada terminal proyek Flutter untuk menambahkan package http.

21. Menambahkan
```bash
</application>
<!-- Required to fetch data from the Internet. -->
<uses-permission android:name="android.permission.INTERNET" />
```
pada file android/app/src/main/AndroidManifest.xml untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.

22. Membuat file baru pada direktori lib/screens dengan nama list_product.dart yang diisi dengan class, methodnya, fungsionaltiasnya, dan import yang dibutuhkan.

23. Menambahkan halaman list_productentry.dart ke widgets/left_drawer.dart.

24. Mengubah fungsi tombol ```Lihat Daftar Produk``` pada halaman utama agar mengarahkan ke halaman ProductPage.

25. Mengimport file yang dibutuhkan saat menambahkan ProductEntryPage.

26. Membuat fungsi create_product_flutter pada main/views.py dan menambahkan path baru path('create-flutter/', create_product_flutter, name='create_product_flutter'), pada main/urls.py.

27. Menghubungkan halaman product_form.dart dengan CookieRequest.

28. Mengubah perintah pada onPressed: () button.

29. Membuat method logout pada authentication/views.py dan menambahkan path('logout/', logout, name='logout'), pada file authentication/urls.py.

30. Menambahkan CookieRequest pada lib/widgets/product_card.dart.

31. Mengubah perintah onTap pada widget inkwell dengan menambahkan async

32. menambahkan kode untuk log out.
    
### Jawaban Pertanyaan

1. **Alasan perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika tidak dilakukan?**

Membuat model untuk pengambilan atau pengiriman data JSON di aplikasi Flutter sangat penting untuk menjaga struktur data yang konsisten dan memudahkan dalam serialisasi dan deserialisasi data. Model ini akan mendefinisikan bagaimana data harus diterima atau dikirim dalam bentuk yang terstruktur.
Jika model tidak dibuat, data JSON akan perlu dibuat secara manual, yang bisa rentan terhadap kesalahan seperti key yang hilang atau data yang tidak terformat dengan benar.
Tanpa model, tidak akan ada jaminan bahwa data yang diterima atau dikirim memiliki struktur yang benar, dan ini berpotensi menyebabkan error atau bug.

2. **Fungsi library http yang sudah diimplementasikan**

Library http di Flutter digunakan untuk melakukan komunikasi HTTP dengan server (misalnya, mengambil data dari server atau mengirim data ke server). Fungsi utama dari library ini adalah:

- GET: Untuk mengambil data dari server.
- POST: Untuk mengirimkan data ke server.
- PUT/PATCH: Untuk memperbarui data yang sudah ada di server.
- DELETE: Untuk menghapus data di server.

3. **Fungsi dari CookieRequest dan alasan instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter**

CookieRequest adalah objek yang digunakan untuk menangani permintaan HTTP yang berhubungan dengan cookies. Dalam konteks aplikasi yang menggunakan autentikasi berbasis session atau token (seperti token yang disimpan dalam cookies), CookieRequest memastikan bahwa cookies yang diperlukan dapat dikirim bersama permintaan HTTP, dan juga dapat menangani cookies yang diterima dari server.

4. **Mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter**

Mekanisme Pengiriman Data:
- Input Data: Pengguna memasukkan data (misalnya, nama, harga) di antarmuka pengguna Flutter (misalnya, menggunakan form atau text fields).
- Serialisasi Data: Data yang dimasukkan kemudian diubah menjadi format JSON menggunakan model atau map yang sesuai.
- Pengiriman Data ke Server: Data JSON dikirim ke server menggunakan permintaan HTTP (seperti http.post atau http.put), dan server akan menerima data ini untuk diproses.
- Tanggapan dari Server: Server mengembalikan response yang bisa berisi hasil pemrosesan, data yang diperbarui, atau konfirmasi.
- Deserialisasi Data: Setelah menerima response dari server, data JSON yang diterima akan diubah menjadi objek Dart menggunakan model yang telah dibuat sebelumnya.
- Tampilkan Data: Data yang telah diubah menjadi objek Dart kemudian digunakan untuk memperbarui tampilan di aplikasi Flutter (misalnya, menggunakan setState() atau Provider).

5. **Mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter**

Mekanisme Autentikasi:

- Login:
	- Pengguna memasukkan data login (misalnya, username/email dan password) melalui form di Flutter.
	- Data login dikirim ke server (misalnya, menggunakan http.post) untuk diverifikasi oleh Django.
	- Django memverifikasi data login, dan jika valid, mengembalikan token autentikasi (misalnya, JWT) atau session cookie.
	- Token atau session cookie disimpan di aplikasi Flutter (misalnya, di shared preferences atau storage lokal).
	- Aplikasi Flutter menggunakan token atau session cookie ini untuk autentikasi pada setiap permintaan HTTP berikutnya.
	- Setelah berhasil login, tampilan menu atau halaman pengguna ditampilkan.
- Register:
	- Pengguna mengisi data pendaftaran (misalnya, nama, email, password).
	- Data pendaftaran dikirim ke server Django untuk membuat akun baru.
	- Jika pendaftaran berhasil, server mengembalikan status sukses, dan aplikasi Flutter dapat mengarahkan pengguna ke halaman login.
- Logout:
	- Pengguna memilih untuk logout dari aplikasi.
	- Aplikasi menghapus token autentikasi atau session cookie yang disimpan sebelumnya.
	- Pengguna diarahkan kembali ke halaman login.
 - Proses Otentikasi Django:
	- Django menerima permintaan login dan memverifikasi kredensial pengguna.
	- Jika kredensial valid, Django mengembalikan token atau session cookie.
	- Untuk logout, Django menghapus session yang terkait dengan pengguna.
</details>
