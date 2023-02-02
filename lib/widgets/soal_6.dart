import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: FlutterLogo(), // logo yang ditempatkan disebelah kiri bar
        title: Text("Text Judul"), // title dari bar aplikasi
        centerTitle: false, // membuat title didalam bar tidak ditengah
        actions: [
          IconButton(
              onPressed: () {
                print("KLIK MORE");
              },
              icon: Icon(Icons.more_vert))
        ], // action ditempatkan sebelah kanan bar
      ),
      body: Center(
          // CARA 1 UNTUK MEMBUAT SEBUAH CONTAINER / WIDGET LAIN MENJADI BULAT (ClipOval)
          //     child: ClipOval(
          //   child: Container(
          //       color: Colors.blue,
          //       width: 250,
          //       height: 250,
          //       child: Center(
          //         child: Text(
          //           "Hallo",
          //           style: TextStyle(fontSize: 50, color: Colors.white),
          //         ),
          //       )),
          // )
          // CARA 2 UNTUK MEMBUAT SEBUAH CONTAINER / WIDGET LAIN MENJADI BULAT (BoxDecoration)
          // untuk menggunakan BoxDecoration warna dari container harus didalam widget BoxDecoration
          // jika ditaruh didalam container maka akan menghasilkan error
          child: Container(
              // color: Colors.amber, jika diaktifkan maka akan menghasilkan error
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(250)),
              child: Center(
                child: Text(
                  "Hallo",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ))),
    );
  }
}
