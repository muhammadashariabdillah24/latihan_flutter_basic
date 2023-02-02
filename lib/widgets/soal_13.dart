import 'package:flutter/material.dart';

class Soal13 extends StatelessWidget {
  const Soal13({
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
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
                SizedBox(width: 20),
                Container(
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
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
