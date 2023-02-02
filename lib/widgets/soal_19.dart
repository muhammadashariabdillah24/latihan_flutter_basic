import 'package:flutter/material.dart';

class Soal19 extends StatelessWidget {
  const Soal19({
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
        body: ListView.builder(
            itemCount: 51,
            padding: EdgeInsets.all(20),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                        image: DecorationImage(
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://picsum.photos/id/${100 + index}/200/300"))),
                    child: Text(
                      "Hallo ${index + 1}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )));
  }
}
