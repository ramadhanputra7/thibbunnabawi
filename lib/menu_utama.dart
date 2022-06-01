import 'dart:io';

import 'package:flutter/material.dart';
import 'package:thibbunnabawi/cara_pengobatan_thibbun_nabawi.dart';

import 'package:thibbunnabawi/jenis_thibbun_nabawi.dart';

import 'package:thibbunnabawi/sejarah_thibbun_nabawi.dart';

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            "Ensiklopedia Thibbun Nabawi",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                color: Colors.green,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Menu Pilihan",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MenuUtama()),
                  );
                },
                leading: Icon(
                  Icons.home,
                  size: 40,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => SejarahThibbunNabawi()),
                  );
                },
                leading: Icon(
                  Icons.book_rounded,
                  size: 40,
                ),
                title: Text(
                  "Sejarah Thibbun Nabawi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => JenisThibbun()),
                  );
                },
                leading: Icon(
                  Icons.book,
                  size: 40,
                ),
                title: Text(
                  "Jenis-jenis Thibbun Nabawi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: bodyHeight * 0.27,
                  child: Image.asset(
                    "images/tibun.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return SejarahThibbunNabawi();
                    })));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(7)),
                    alignment: Alignment.center,
                    height: bodyHeight * 0.1,
                    child: Text(
                      "Sejarah Thibbun Nabawi",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return JenisThibbun();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(7)),
                    alignment: Alignment.center,
                    height: bodyHeight * 0.1,
                    child: Text(
                      "Jenis-Jenis Thibbun Nabawi",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CaraPengobatan();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(7)),
                    alignment: Alignment.center,
                    height: bodyHeight * 0.1,
                    child: Text(
                      "Cara Pengobatan Thibbun Nabawi",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => exit(0),
          backgroundColor: Color.fromARGB(255, 233, 19, 3),
          child: Icon(Icons.exit_to_app_rounded),
        ),
        backgroundColor: Color.fromARGB(255, 22, 24, 26));
  }
}
