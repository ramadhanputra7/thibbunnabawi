import 'package:flutter/material.dart';

import 'menu_utama.dart';
import 'sejarah_thibbun_nabawi.dart';

class JenisThibbun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Color.fromARGB(255, 38, 231, 3),
        title: Row(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 60, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: 19,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            )),
            Text(
              "Jenis Thibbun Nabawi",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 10, 10, 10)),
            ),
          ],
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Jenis-jenis Thibbun Nabawi",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1. Pengobatan Herbal",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " Pengobatan Herbal adalah sebuah pegobatan dengan menggunakan bahan-bahan alami seperti: madu, Habbahtussauda (Jintan Hitam), kurma dan minyak zaitun .",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "2. Bekam (Hijamah)",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    " Ada beberapa istilah yang dipakai dalam bentuk terapi kesehatan,Diantaranya; Hijamah istilah dalam bentuk bahasa arab, bekam istilah melayu, cupping istilah dalam bahasa Inggris, ghu-sha dalam bahasa cina, cantuk dan kop istilah yang dikenal orang Indonesia",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "3. Gurah",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Gurah adalah pengobatan yang telah dikenal sejak jaman Rasulullah Saw, gurah ini berfungsi untuk mengeluarkan dahak ataupun kotoran lain di sekitar THT (telinga, hidung, tenggorokan) dengan cara memasukan cairan herbal sunnah atau herbal tradisional kedalam hidung. Yang selanjutnya akan keluar cairan berupa lendir atau kotoran dengan sendirinya. ",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "4. Ruqyah",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Pengobatan terapi ruqyah adalah sebagai pengobatan tradisional, yang mengobati dan menyembuhkan suatu penyakit mental, spiritual, moral maupun fisik dengan melalui bimbingan Al-qur‟an dan As-Sunnah.",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
