import 'package:flutter/material.dart';

class Soal17 extends StatelessWidget {
  const Soal17({
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
        body: GridView.builder(
          itemCount: 51,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              height: 150,
              color: index % 2 == 0 ? Colors.blue : Colors.amber,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            );
          },
        ));
  }
}
