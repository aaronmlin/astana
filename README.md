# Astana #

## Aaron Mario Lin - 2206082341 ##


## Tugas 7 ##

- [ ] Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi menggunakan _framework_ Flutter, suatu widget dapat berupa _stateful_ atau _stateless_. Suatu widget _stateless_ tidak dapat berubah. Contohnya adalah Icon, IconButton, dan Text. Semuanya merupakan _subclass_ StatelessWidget. Sedangkan, _stateful_ widget bersifat dinamis. Ia dapat berubah penampilan dengan terjadinya suatu event. Contohnya adalah Checbox, Radio, dan TextField. Semuanya merupakan subclass StatefulWidget.
- [ ] Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1. ShopCard --> ShopCard adalah kelas yang digunakan untuk membuat kartu yang mewakili setiap item dalam daftar toko. Ini adalah widget StatelessWidget yang menerima sebuah ShopItem sebagai argumen dan menghasilkan kartu yang dapat ditekan.
2. ShopItem --> adalah kelas yang digunakan untuk merepresentasikan item yang akan ditampilkan dalam daftar toko aplikasi. Properti kelas ini mencakup nama item, ikon item (dengan menggunakan IconData), dan warna item. Pada saat ditekan, itu menampilkan snackbar yang memberi tahu pengguna bahwa item telah ditekan.
3. MyHomePage --> MyHomePage adalah kelas yang mewakili halaman utama aplikasi .Ini adalah widget StatelessWidget yang memiliki properti items yang berisi daftar ShopItem. Ini menggunakan Scaffold untuk membangun kerangka aplikasi yang mengandung AppBar di bagian atas dan konten di bawahnya. Kontennya terdiri dari judul, dan tampilan GridView yang menampilkan item toko dalam format grid.
4. AppBar --> AppBar adalah bagian atas aplikasi yang berisi judul aplikasi dan elemen-elemen terkait aplikasi lainnya. Dapat mengatur properti seperti warna latar belakang dan warna teks melalui AppBar ini.
5. SingleChildScrollView --> SingleChildScrollView adalah widget yang digunakan untuk membuat konten yang dapat discroll. Ini akan membantu jika kontennya lebih panjang dari layar.
6. Padding --> Padding digunakan untuk menambahkan jarak (padding) di sekitar widget yang ada di dalamnya. Anda menggunakannya di sekitar widget Column agar ada jarak dari pinggir layar.
7. Column --> Column digunakan untuk menampilkan sejumlah widget sebagai children secara vertikal.
8. GridView --> GridView adalah widget yang digunakan untuk menampilkan sejumlah widget dalam format grid. GridView.count digunakan untuk menentukan jumlah item per baris.
9. Material --> Material adalah widget yang digunakan untuk memberikan latar belakang dengan warna tertentu pada setiap ShopCard.
10. InkWell --> InkWell digunakan sebagai wrapper di sekitar Material untuk menangani sentuhan pengguna (tap) pada setiap kartu.
11. SnackBar --> SnackBar digunakan untuk menampilkan pesan kilat (notifikasi) ketika pengguna menekan salah satu kartu. Itu digunakan untuk memberi tahu pengguna bahwa item telah ditekan.
- [ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist diatas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. Membuat suatu proyek Flutter baru dan menjalankan proyek
2. Membuat tiga tombol sederhana dengan menambahkan beberapa kode kedalam berkas baru `menu.dart`
3. Membuat suatu widget _stateless_ bernama MyHomePage
4. Menambahkan class ShopItem untuk menyimpan teks dan card barang toko
5. Menambahkan kode yang ada di tutorial 6 untuk didalam Widget build, dan mengubah ShopCard menjadi _stateless_
6. Untuk bonus, saya menambahkan attibut Color color kedalam class ShopItem, dan menggunakannya di class ShopCard.
```
 return Material(
      color: item.color, 
      child: InkWell(

```
dan membuat perubahan di ShopItem
```
final List<ShopItem> items = [
  ShopItem("Lihat Item", Icons.checklist, Colors.blue), // Specify different colors
  ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.green),
  ShopItem("Logout", Icons.logout, Colors.red),
];
```

