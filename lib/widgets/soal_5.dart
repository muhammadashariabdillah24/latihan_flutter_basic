import 'package:flutter/material.dart';

class Soal5 extends StatelessWidget {
  const Soal5({
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
          // TRANSFORM ROTATE
          child: Container(
              color: Colors.blue,
              width: 250,
              height: 250,
              child: Center(
                child: Text(
                  "Hallo",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ))),
    );
  }
}
