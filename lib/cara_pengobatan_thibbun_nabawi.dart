import 'package:flutter/material.dart';
import 'package:thibbunnabawi/menu_utama.dart';

import 'package:thibbunnabawi/screens/gurah.dart';
import 'package:thibbunnabawi/screens/herbal.dart';
import 'package:thibbunnabawi/screens/ruqyah.dart';

import 'screens/bekam.dart';
import 'jenis_thibbun_nabawi.dart';

class CaraPengobatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 194, 3),
        toolbarHeight: 65,
        title: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 35,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MenuUtama();
                      }));
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Cara Pengobatan Thibbun Nabawi",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(20),
              color: Colors.black,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Menu Pilihan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return MenuUtama();
                }));
              },
              leading: Icon(
                Icons.home,
                size: 40,
              ),
              title: Text(
                "Menu Utama",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return JenisThibbun();
                }));
              },
              leading: Icon(
                Icons.book,
                size: 20,
              ),
              title: Text(
                "Jenis Thibbun Nabawi",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CaraPengobatan();
                }));
              },
              leading: Icon(
                Icons.book,
                size: 20,
              ),
              title: Text(
                "Cara Pengobatan Thibbun Nabawi",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Herbal("https://youtu.be/8cJgM2rTTiI");
                      }));
                    },
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      height: 90,
                      color: Color.fromARGB(255, 8, 122, 179),
                      child: Text(
                        "PENGOBATAN HERBAL",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Bekam("https://youtu.be/oFExHx9TEWU");
                      }));
                    },
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      height: 90,
                      color: Color.fromARGB(255, 8, 122, 179),
                      child: Text(
                        "BEKAM",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Gurah("https://youtu.be/2j9SbXAPXiU");
                      }));
                    },
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      height: 90,
                      color: Color.fromARGB(255, 8, 122, 179),
                      child: Text(
                        "GURAH",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Ruqyah("https://youtu.be/7Nnx_7jStgs");
                      }));
                    },
                    child: Container(
                      width: 200,
                      alignment: Alignment.center,
                      height: 90,
                      color: Color.fromARGB(255, 8, 122, 179),
                      child: Text(
                        "RUQIAH",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MenuUtama();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      height: 60,
                      width: 150,
                      child: Text("Home"),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
