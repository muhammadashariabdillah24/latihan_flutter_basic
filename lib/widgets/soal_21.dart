import 'package:flutter/material.dart';

class Soal21 extends StatelessWidget {
  const Soal21({
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
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.green,
              ),
              Container(
                width: 225,
                height: 225,
                color: Colors.red,
              ),
              Container(
                width: 220,
                height: 220,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.purple,
              ),
              Container(
                width: 175,
                height: 175,
                color: Colors.purple,
              ),
              Container(
                width: 165,
                height: 165,
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
