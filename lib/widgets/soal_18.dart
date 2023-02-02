import 'package:flutter/material.dart';

class Soal18 extends StatelessWidget {
  const Soal18({
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
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.amber,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              );
            }
            // CARA KE 2 (Ini Paling simple dan praktis)
            // return Column(
            //   children: [
            //     Container(
            //       height: 150,
            //       color: index % 2 == 0 ? Colors.blue : Colors.amber,
            //     ),
            //     Text("Hello ${index + 1}")
            //   ],
            // );
          },
        ));
  }
}
