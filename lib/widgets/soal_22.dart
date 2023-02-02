import 'package:flutter/material.dart';

class Soal22 extends StatelessWidget {
  const Soal22({
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
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300 / 2),
                border: Border.all(color: Color(0xFFFFD740), width: 10),
                color: Colors.grey[300],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        NetworkImage("https://picsum.photos/id/201/200/300"))),
          ),
        ));
  }
}
