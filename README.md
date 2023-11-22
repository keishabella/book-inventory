<details>
<summary>TUGAS 7</summary>

## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Stateless widget adalah widget yang tidak menyimpan status internal yang berarti widget ini tidak dapat mengubah tampilan atau perilakunya setelah dibuat. Stateless widget biasanya digunakan untuk tampilan statis yang tidak memerlukan perubahan atau interaksi. Sebaliknya, stateful widget adalah widget yang dapat memiliki status internal yang dapat berubah setelah dibuat. Stateful widget dapat digunakan ketika kita perlu memperbarui tampilan atau merespons interaksi pengguna secara dinamis. Ketika status suatu aplikasi dapat berubah, misalnya, karena input pengguna atau perubahan data, maka stateful widget digunakan untuk memperbarui tampilan sesuai dengan perubahan tersebut.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Widget pada main.dart:
- `MaterialApp` : Widget yang menjadi root bagi aplikasi atau menginisialisasi projek flutter dan menjadi parent dari semua widget lain
- `ThemeData` : Widget yang memberi tema dari keseluruhan aplikasi. Tema termasuk font, warna dan elemen fisual lainnya
- `ColorScheme` : Widget yang menetapkan suatu warna spesifik bagi suatu objek.
- `MyHomePage` : Widget yang menjadi home page dari aplikasi yang mengandung konten-konten utama pada aplikasi.

Widget pada menu.dart:
- `Scaffold` : Widget yang menyediakan struktur dasar dari applikasi Flutter.
- `AppBar` : Widget untuk bar yang berada di atas dari screen.
- `SingleChildScrollView` : Widget berfungsi sebagai wrapper yang dapat discroll
- `Padding` : Widget untuk marging yang memberi padding atau jarak 
- `Column` : Widget yang mengatur peletakan child nya secara vertikal seperti kolom
- `GridView.count` : Widget yang membuat layout berbentuk grid
- `EdgeInsets` : Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
- `Text` : widget yang menampilkan tulisan
- `MyHomePage` : Widget yang berfungsi sebagai home page aplikasi
- `ShopCard` : Widget yang merepresentasikan sebuah shop item card yang memiliki warna, icon dan nama.
- `Container` : Widget yang berfungsi sebagai container untuk widget lainnya
- `InkWell` : Widget yang bisa membuat childnya responsive terhadap event
- `Center` : Widget yang berfungsi untuk memposisikan children-nya ditengah
- `Icon` : Widget yang berguna untuk menampilkan ikon
- `SnackBar` : Widget untuk memunculkan pesan singkat di bagian bawah layar untuk periode waktu singkat
- `ScaffoldMessenger` : Widget yang berfungsi menyediakan API untuk memunculkan snackbar

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
1. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya
- Membuat folder baru di lokal dan melakukan init, serta menghubungkannya dengan repositori di github
- Membuat aplikasi flutter baru dengan menjalankan
```
flutter create book_inventory  // membuat aplikasi bernama book_inventory
cd book_inventory  // masuk ke dalam folder aplikasi
```

2. Membuat tiga tombol (Lihat Item, Tambah Item, Logout)
Menambahkan tiga tombol untuk lihat item, tambah item, dan logout dengan menambahkan kode berikut:
```
final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.blue), // Warna biru
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.red), // Warna merah
    ShopItem("Logout", Icons.logout, Colors.green), // Warna hijau
  ];
```

3. Memunculkan Snackbar dengan tulisan: "Kamu telah menekan tombol (nama tombol)" ketika tombol (nama tombol) ditekan.
Membuat Snackbar dengan menambahkan kode berikut:
```
@override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Menggunakan properti warna dari ShopItem
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
    ...
```

</details>

<details>
<summary>TUGAS 8</summary>

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
- `Navigator.push()`: Metode push() akan push() akan menambahkan route baru diatas route yang sudah ada pada atas stack. Contoh penggunaannya adalah saat back ke halaman yang sebelumnya.
```
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Menu()),
  );
```

- `Navigator.pushReplacement()`: Metode pushReplacement() menggantikan route yang sudah ada pada atas stack dengan route baru tersebut. Contoh penggunaannya adalah saat login dan masuk ke halaman lain.
```
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => Home()),
  );
```
 
## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
- `Column`: digunakan untuk menampilkan widget dalam satu kolom atau secara vertikal.
- `Row`: digunakan untuk menampilkan widget dalam satu baris atau secara horizontal.
- `Center`: digunakan untuk memposisikan dan menampilkan widget di tengah.
- `GridView`: digunakan untuk menampilkan widget dengan bentuk grid / kotak.
- `ListView`: digunakan untuk membuat suatu daftar yang dapat discroll.
- `Stack`: digunakan untuk menumpuk widget di atas satu sama lain.

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Elemen input yang digunakan pada form yang dipakai pada tugas ini adalah `TextFormField` yang digunakan untuk membuat kolom input teks yang dapat menerima masukan dari pengguna. Elemen input ini digunakan karena saya memerlukan input dari pengguna yang berupa teks. Elemen input ini juga memungkinkan penggunaan fungsi validator untuk memastikan apakah input dari pengguna sudah diisi dan sesuai.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
`Clean Architecture` adalah pola atau struktur yang memisahkan lapisan data, lapisan domain, dan lapisan presentasi sehingga menjadi lebih mudah untuk memodifikasi kode sehingga lebih terorganisir. 

Clean Architecture pada Flutter memisahkan code menjadi beberapa bagian:
- `Lapisan Data`: Lapisan ini bertanggung jawab atas pengambilan dan penyimpanan data, seperti repositori, penyimpanan lokal, dan basis data.
- `Lapisan Domain`: Lapisan ini berisi logika bisnis dan akan mengelola logika bisnis.
- `Lapisan Presentasi`: Lapisan ini mengatur komponen interface, seperti widget dalam menampilkan UI.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! 
- Membuat berkas baru dengan nama `left_drawer.dart` di dalam direktori baru `widgets` dan membuat drawer yang memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`
- Mengimpor widget drawer yang sudah dibuat pada berkas `menu.dart`
- Membuat berkas baru `booklist_form.dart` untuk halaman form 
- Membuat variabel baru bernama `_formKey` untuk handler dari form state, validasi form, dan penyimpanan form. Setelah itu, menambahkan `_formKey` ke dalam atribut `key` pada widget `Form`
- Mengisi widget `Form` dengan field dengan variabel _name, _amount dan _description
- Membuat widget `Column` sebagai child dari `SingleChildScrollView`
- Membuat widget `TextFormField` yang dibungkus oleh `Padding` yang merupakan children dari widget `Column` yang memiliki tiga elemen input, yaitu name, amount, dan description
- Menambahkan `validator` untuk validasi input tidak boleh kosong
- Menambahkan tombol yang dibungkus `Padding` serta `Align` yang merupakan child dari `Column` untuk membuat `pop-up` setelah menekan tombol `Save` pada halaman form tambah item baru. 
- Menambahkan fungsi `showDialog()` di bagian `onPressed()`
- Memunculkan `AlertDialog` dan menambahkan fungsi untuk reset form 
- Membuat berkas baru yang bernama `book_card.dart` pada direktori `widgets`. Lalu memindahkan isi widget `BookItem` pada `menu.dart` berkas `book_card.cart`

</details>

<details>
<summary>TUGAS 9</summary>

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Iya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Hal ini dapat dilakukan dengan memasukkan data-data JSON ke dalam map. Pendekatan ini mungkin tidak selalu lebih baik daripada membuat model sebelum melakukan pengambilan data JSON. Jika data sederhana, maka pengambilan data JSON tanpa membuat model mungkin lebih efisien. Namun, jika data yang dimiliki lebih kompleks, pembuatan model sebelum melakukan pengambilan data JSON mungkin akan lebih baik dalam hal mengelola dan memahami data.

##  Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest digunakan untuk mengirim permintaan HTTP yang menyertakan cookie. Penggunaan CookieRequest memungkinkan server untuk mengenali pengguna yang login dan menyimpan informasi sesi. Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter karena setiap komponen akan mengakses cookie yang sama dan setiap komponen memiliki akses ke data yang sama mengenai sesi pengguna atau pengguna yang terautentikasi.

## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
1. Membuat Permintaan HTTP ke endpoint API yang menyediakan data JSON untuk fetch data
2. Menerima respons dari server yang menampilkan data dalam format JSON.
3. Melakukan decoding data JSON menjadi format yang dapat dipahami oleh Dart
4. Membuat model data dengan mengubah data tersebut menjadi objek Dart
5. Menampilkan data di widget Flutter dalam bentuk objek Dart

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Dengan menggunakan package `pbp_django_auth`, `CookieRequest` dibuat
2. Ketika input berupa username dan password dimasukkan dalam aplikasi, password dan username tersebut akan mengirimkan request ke Django untuk melakukan autentikasi dan login. Jika autentikasi sukses, maka akan mengembalikan nilai `True` pada `JsonResponse` dan nilai `False` jika gagal.

## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- `Text`: Widget yang menampilkan teks 
- `FutureBuilder`: Widget yang membangun dirinya sendiri berdasarkan snapshot interaksi terbaru dengan Future.
- `ListView.builder`: Widget yang digunakan untuk menampilkan data item yang dapat di-scroll.
- `SizedBox`: Widget yang dapat digunakan untuk mengatur jarak antara dua widget
- `ElevatedButton`: Widget ini digunakan untuk menambahkan dimensi pada tata letak.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
1. Pertama, pada proyek Django, dibuat app baru bernama `authentication` dan menambahkannya di `INSTALLED_APPS` pada `settings.py`
2. Menginstal library yang dibutuhkan dengan menjalankan perintah `pip install django-cors-headers`
3. Menambahkan `corsheaders` ke `INSTALLED_APPS` dan menambahkan `corsheaders.middleware.CorsMiddleware` pada `MIDDLEWARE`
4. Menambahkan beberapa variabel di `settings.py`
```
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```
5. Membuat view di authentication pada views.py dengan menambahkan code yang sesuai berisikan fungsi `login` dan `logout`
6. Membuat file `urls.py` pada folder `authentication` dan menambahkan url routing untuk fungsi `login` dan `logout` dan menambahkan path untuk `login` dan `logout`
7. Menginstal package dengan menjalankan `flutter pub add provider` dan `flutter pub add pbp_django_auth`
8. Mengubah root widget untuk menyediakan `CookieRequest` library ke semua childe widgets dengan menggunakan `Provider`
9. Membuat file `login.dart` dalam folder `screens` dan mengisinya dengan kode yang sesuai
10. Membuat model yang menyesuaikan dengan data JSON dengan website `Quicktype`
11. Pada web Quicktype, input data JSON yang berada pada endpoint JSON yang sudah dibuat lalu copy code model dalam format Dart
12. Menambahkan dependensi HTTP dengan menjalankan perintah `flutter pub add http` dan menambahkan code `<uses-permission android:name="android.permission.INTERNET" />` untuk memperbolehkan akses internet pada aplikasi FLutter yang sedang dibuat
13. Melakukan fetch data dari Django dengan membuat file baru `list_product.dart` pada `lib/screens`, mengisinya dengan kode yang sesuai, dan menambahkan halaman `list_product.dart` ke `widgets/left_drawer.dart`
14. Mengintegrasikan form flutter dengan layanan Django dengan membuat fungsi `create_product_flutter` dan menambahkannya ke path lalu pada proyek Flutter, dihubungkan halaman `booklist_form.dart` dengan `CookieRequest`

</details>