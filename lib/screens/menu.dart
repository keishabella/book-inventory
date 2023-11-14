import 'package:flutter/material.dart';
import 'package:book_inventory/screens/booklist_form.dart';
import 'package:book_inventory/widgets/left_drawer.dart';
import 'package:book_inventory/widgets/book_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<BookItem> items = [
    BookItem("Lihat Item", Icons.checklist, Colors.blue), // Warna biru
    BookItem("Tambah Item", Icons.add_shopping_cart, Colors.red), // Warna merah
    BookItem("Logout", Icons.logout, Colors.green), // Warna hijau
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Inventory',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Book Inventory', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((BookItem item) {
                  // Iterasi untuk setiap item
                  return BookCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
