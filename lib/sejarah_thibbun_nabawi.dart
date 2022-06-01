import 'package:flutter/material.dart';

import 'cara_pengobatan_thibbun_nabawi.dart';
import 'jenis_thibbun_nabawi.dart';
import 'menu_utama.dart';

class SejarahThibbunNabawi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 250, 249),
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Color.fromARGB(255, 35, 248, 35),
        title: Row(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 60, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 230, 11, 11),
                    child: IconButton(
                      iconSize: 19,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return MenuUtama();
                        }));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sejarah Thibbun Nabawi",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 10, 10, 10)),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 11, 204, 11),
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
                    .pushReplacement(MaterialPageRoute(builder: (context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Thibbun Nabawi",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 5, 5, 5)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      " Thibbun Nabawi merupakan segala sesuatu yang disebutkan oleh Al-Quran dan As-Sunnah     yang Shahih dan berkaitan dengan kedokteran baik berupa pencegahan penyakit atau pengobatan.  ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7), fontSize: 25),
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      " Thibbun Nabawi merujuk pada tindakan dan perkataan hadist Nabi Muhammad SAW, mengenai penyakit, pengobatan dan kebersihan. ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7), fontSize: 25),
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      " Istilah Thibbun Nabawi ini dimunculkan oleh para dokter muslim sekitar abad ke-13 M untuk menunjukkan ilmu-ilmu kedokteran yang berada dalam bingkai keimanan pada Allah, sehingga terjaga dari kesyirikan, takhayul dan khurafat. ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7), fontSize: 25),
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      " Thibbun Nabawi atau teknik pengobatan Nabi merupakan salah satu bentuk pengobatan yang dianjurkan dan yang dilakukan oleh Rasulullah shallahualaihi wasallam.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7), fontSize: 25),
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      " Thibbun nabawi adalah metode pengobatan dari Rasulullah saw. Dengan kata lain, sumber pengetahuan tentang metode thibbun nabawi adalah wahyu (dalil syar‟i), baik yang didapatkan dari Al-Qur‟an maupun Sunnah.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7), fontSize: 25),
                      textAlign: TextAlign.justify,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
