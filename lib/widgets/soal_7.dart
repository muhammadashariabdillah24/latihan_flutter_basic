import 'package:flutter/material.dart';

class Soal7 extends StatelessWidget {
  const Soal7({
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
        body: Row(
          children: [
            Container(
              // margin: EdgeInsets.only(right: 20), // Cara 2 memberi jarak dengan margin (memberi jarak 2 ke sisi kanan)
              width: 150,
              height: 150,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
                width:
                    20), // Cara 1 memberi jarak antara 2 buah item atau lebih
            Container(
              // margin: EdgeInsets.only(left: 20), // Cara 2 memberi jarak dengan margin (memberi jarak 2 ke sisi kiri)
              width: 150,
              height: 150,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ));
  }
}
