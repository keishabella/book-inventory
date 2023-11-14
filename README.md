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
Elemen input yang digunakan pada form yang dipakai pada tugas ini adalah `TextFormField` yang digunakan untuk membuat kolom input teks yang dapat menerima masukan dari pengguna. Elemen input ini digunakan karena saya memerlukan input dari pengguna yang berupa teks. Elemen input ini juga memungkinkan penggunaan fungsi validator untuk memastikan apakah input dari pengguna sudah diisi dan sesuai.s

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