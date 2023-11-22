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

## Tugas 8 ##

- [ ] Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
1. Navigator.push()
- push() new page
- Menambahkan suatu route ke dalam stack route yang dimanage oleh Navigator
- Dapat kembali ke page sebelumnya dengan tombol back karena pagenya tidak di pop(), hanya saja berada tepat di bawah new page pada stack route
2. Navigator.pushReplacement()
- push() current page kemudian pop() new page
- Menghapus route yang sedang ditampilkan dan menggantinya dengan suatu route baru
- Tidak dapat kembali ke page sebelumnya dengan tombol back karena page sebelumnya telah di pop(), sehingga tidak ada di di bawah new page pada stack route

  - [ ] Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
- Container => Biasanya menampung beberapa widget. Dapat digunakan untuk kustomisasi seperti background color, margin, padding, etc.
- Row => Menyusun childrennya pada 1 row yang sama (horizontally). Dapat digunakan untuk menata letak widget jika ingin ditempatkan pada 1 row yang sama.
- Column => Menyusun childrennya pada 1 column yang sama (vertically). Dapat digunakan untuk menata letak widget jika ingin ditempatkan pada 1 column yang sama.
- ListView => Menyusun childrennya Dapat digunakan untuk menampilkan list daftar item seperti pada left drawer di tugas ini.
- Stack => Menyusun childrennya secara bertumpuk (stack). Widget children akan diatur relatif terhadap satu sama lain. Dapat digunakan untuk handle widget yang mungkin overlap.
- Expanded => Mengontrol agar widget dapat mengisi ruang sebanyak mungkin (expand). Dapat digunakan untuk memberikan extra space pada widget.
- Flexible => Mengontrol seberapa besar space yang dapat diisi oleh childrennya. Dapat digunakan untuk membatasi seberapa kecil/besar space yang dapat digunakan widget.
- GridView => Menyusun childrennya dalam format matrix (grid). Dapatdigunakan untuk membuat tabel, menyusun card, dan lain sebagainya.
- Wrap => Menyusun childrennya dalam format row dan column, jika spacenya tidak cukup widget akan berpindah ke row atau column berikutnya. Dapat digunakan untuk menyesuaikan ukuran setiap row/column, menghandle agar widget tidak overflow, dan lain sebagainya.

- [ ] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

- Form => Saya gunakan untuk membuat dan mengelola formulir. Saya gunakan juga untuk validasi input dan menyimpan input pengguna apabila sudah sesuai.
- SingleChildScrollView => Saya gunakan untuk page dapat discroll apabila konten lebih besar dari ukuran screen.
- Column => Saya gunakan untuk mengatur widget childnya dalam kolom vertikal.
- Padding => Saya gunakan untuk mengatur jarak (padding) di sekitar widget childnya.
- TextFormField => Saya gunakan untuk tempat pengguna memberikan input, kemudian akan diproses oleh program untuk validasi input dan menyimpannya.
- Text => Saya gunakan untuk menampilkan teks pada page.
- TextStyle => Saya gunakan untuk kustomisasi teks pada page (color, size, etc.). Saya gunakan juga untuk mengubah warna text pada TextFormField.
- InputDecoration => Saya gunakan untuk mengatur dekorasi elemen input seperti label, icon, dan text style.
- OutlineInputBorder => Saya gunakan untuk memberikan outline pada TextFormField.
- Align => Saya gunakan untuk mengatur posisi (alignment) widget childrennya.
- ElevatedButton => Saya gunakan untuk efek peninggian dan memberikan respon ketika diklik.
- ButtonStyle => Saya gunakan untuk menentukan style button.
- TextButton => Saya gunakan untuk menampilkan button OK.

- [ ]  Bagaimana penerapan clean architecture pada aplikasi Flutter?
- Clean architecture pada aplikasi Flutter memisahkan kode menjadi beberapa lapisan (layer) dengan tujuan penggunaan yang berbeda.
- Separation of concern.
- Dengan pemisahan lapisan tersebut, akan memudahkan proses perancangan aplikasi dan proses debugging aplikasi apabila terdapat error karena telah terpisahkan di awal dan hanya perlu mengubah bagian yang error.
- Contoh pemisahan komponennya adalah user interface, dependencies injection, testing, domain, data, dan lain sebagainya. 

- [ ]  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

1. Pertama tama untuk merapikan code dart yang tersedia, membuat 2 folder yang memisahkan setiap fungsi dari code, pertama berisi screens, kedua berisi widgets.
2. Untuk membuat halaman yang berisikan formulir untuk menambahkan item baru, saya membuat dile dart baru bernama shoplist_form pada folder screens. Kode ini saya gunakan dari tutorial 7.
3. Kemudian memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah dibuat.
4. Selanjutnya membuat form input sederhana, menggunakan kode yang diberikan dari tutorial, tak lupa juga memberikan validasi dengan menambahkan `onPressed: _saveProduct`, sekaligus validasi seperti
```
validator: (String? value) {
    if (value == null || value.isEmpty) {
    return "Deskripsi tidak boleh kosong!";
    }
    return null;
},
```
5. Untuk mengarahkan pengguna ke halaman yang sesuai, kita dapat melakukan import yang sesuai, dan menambahkan routing seperti
```
// Navigate ke route yang sesuai (tergantung jenis tombol)
if (item.name == "Tambah Produk") {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ShopFormPage()),
);
}
```
setelah itu memanggil setiap item didalam list.

6. Membuat pop-up berisi data setelah menekan tombol save, dengan menambahkan beberapa kode di `menu.dart`
7. Membuat widget `left_drawer` dengan mengikuti ajaran tutorial


## Tugas 9 ##

- [ ] Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum  melakukan pengambilan data JSON?
 Ya, bisa. Dalam Flutter, data JSON dapat diakses secara langsung sebagai `Map<String, dynamic>` atau `List<Map<String, dynamic>>` tergantung dari struktur JSON yang diterima. Walaupun begitu, cara ini masih kurang ideal dibandingkan tanpa menggunakan model karena alasan ketidakefisienan dan keamanan

- [ ] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa _instance_ CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest yaitu sebuah kelas yang melakukan manajemen _request_ HTTP bersamaan dengan mempertahankan cookies. Fungsi-fungsinya sebagai berikut:
1. Mengelola _cookies_ --> mengelola _cookies_ untuk setiap HTTP _request_ dan _response_
2. _Session persistence_ --> menggunakan sesi pengguna aktif selama aplikasi terbuka
3. _Session consistency_ --> memastikan semua request mempertahankan _session_ yang sama
4. Efisiensi --> Menghindari pembuatan instance CookieRequest yang berlebihan

- [ ] Jelaskan mekanisme pengambilan data dari JSON hingg dapat ditampilkan di Flutter
1. Fetch data --> menggunakan HTTP _request_ (GET) untuk mengambil data JSON dari web service
2. JSON _deserialization_ --> mengubah data JSON menjadi objek Dart. Dilakukan dengan cara mengubah menjadi struktur map seperti di soal pertama
3. Penggunaan Data --> Menggunakan data yang telah diubah untuk mengisi _state_ atau variabel dalam aplikasi Flutter.
4. Menampilkan Data --> Menampiilkan data yang telah dikonversi menjadi bentuk-bentuk _widget_ dalam aplikasi Flutter.
   
- [ ] Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hinga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Berikut adalah langkah-langkah mekanisme autentikasi input data akun pada Flutter ke Django
1. Input --> memasukkan data pengguna pada form
2. Send ke Django --> menggunakan HTTP _request_ (POST)
3. Django menerima data dan melakukan proses autentikasi
4. Respons ke Flutter --> menggunakan HTTP _response_
5. Tampilan di Flutter --> Hasil dari respons akan ditampilkan di aplikasi Flutter


- [ ] Sebutkan seluruh _widget_ yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
1. `Scaffold` --> membuat struktur dasar tampilan aplikasi
2. `ListView.builder` --> membuat tampilan daftar yang bersifat dinamis
3. `TextFormField` --> Digunakan untuk input teks dari pengguna
4. `ElevatedButton` --> Tombol untuk melakukan sebuah _action_, seperti submit form


- [ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Membuat app `authentication` di projek Django rsml --> github.com/aaronmlin/rsml
2. Menginstall dependencies yang diperlukan
3. Membuat function untuk menerima autentikasi di app `authentication` yang dapat digunakan di projek Flutter
4. Menginstall package dengan melakukan `flutter pub add provider` dan `flutter pub add pbp_django_auth`
5. Memodifikasi _root widget_ sehingga menggunakan `Provider`
6. Membuat file `login.dart` untuk membuat tampilan login --> kode menggunakan tutorial
7. Membuat model _custom_ dengan Quicktype
8. Menambahkan dependensi HTTP dengan menambahkan package `http`, dan melakukan fetch data dari projek Django dengan membuat file baru `list_product.dart`, tidak lupa untuk membuat routing yang sesuai dengan URL di projek Django, serta routingnya ke file lain di projek Flutter
9. Melakukan integrasi form Flutter dengan layanan Django --> membuat function baru bernama `create_product_flutter` di `main/views.py`, dan melakukan routing pada `urls.py` seperti biasa.
