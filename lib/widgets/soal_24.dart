import 'package:flutter/material.dart';

class Soal24 extends StatelessWidget {
  const Soal24({
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
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (index % 2 == 0) {
                      return Container(
                        width: 120,
                        height: 100,
                        color: Colors.blue[900],
                        margin: EdgeInsets.only(right: 20),
                      );
                    } else {
                      return Container(
                        width: 120,
                        height: 100,
                        color: Colors.amber,
                        margin: EdgeInsets.only(right: 20),
                      );
                    }
                  }),
            ),
            Expanded(
              child: ListView.builder(
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
                },
              ),
            ),
          ],
        ));
  }
}
