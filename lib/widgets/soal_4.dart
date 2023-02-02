import 'dart:math';

import 'package:flutter/material.dart';

class Soal4 extends StatelessWidget {
  const Soal4({
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
          child: Transform.rotate(
        angle: pi / (180 / 90), // set ke 90 derajat
        child: FlutterLogo(
          size: 200,
        ),
      )
          // TRANSFORM SCALE
          //   child: Transform.scale(
          //   scaleX: 3, // scale x for scale left and right
          //   scaleY: 1, // scale y for scale up and down
          // child: FlutterLogo(
          //   size: 200,
          // ),
          // )
          // TRANSFORM TRANSLATE
          // child: Transform.translate(
          //   offset: const Offset(0.6, 1.5),
          //   child: FlutterLogo(
          //     size: 200,
          //   ),
          // ),
          ),
    );
  }
}
