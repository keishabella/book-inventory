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