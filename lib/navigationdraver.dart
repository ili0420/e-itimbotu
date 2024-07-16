import 'package:egitim_mobil_ui/ogrenci_ekle.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

class EgitimBotuDraver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/images/img.png"),
            ),
            ExpansionTile(
              title: Text('Anasayfa'),
              children: [
                ListTile(
                  title: Text('Anasayfa'),
                  onTap: () {
                    // Anasayfa işlemleri
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Öğrenci'),
              children: [
                ListTile(
                  title: Text('Öğrenci Ekle'),
                  onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>StudentAdded())
                   );
                  },
                ),
                ListTile(
                  title: Text('Öğrenci Düzenle'),
                  onTap: () {
                    // Öğrenci Düzenle işlemleri
                  },
                ),
                ListTile(
                  title: Text('Performans Takibi'),
                  onTap: () {
                    // Performans Takibi işlemleri
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Öğretmen'),
              children: [
                ListTile(
                  title: Text('Öğretmen Ekle'),
                  onTap: () {
                    // Öğretmen Ekle işlemleri
                  },
                ),
                ListTile(
                  title: Text('Öğretmen Düzenle'),
                  onTap: () {
                    // Öğretmen Düzenle işlemleri
                  },
                ),
                ListTile(
                  title: Text('Ders Prog. Yönetimi'),
                  onTap: () {
                    // Ders Programı Yönetimi işlemleri
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Sınıf'),
              children: [
                ListTile(
                  title: Text('Sınıf Ekle'),
                  onTap: () {
                    // Sınıf Ekle işlemleri
                  },
                ),
                ListTile(
                  title: Text('Sınıf Düzenle'),
                  onTap: () {
                    // Sınıf Düzenle işlemleri
                  },
                ),
              ],
            ),
            ListTile(
              title: Text('Çıkış Yap'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text("Bura değişcek"),
        ],
      )
    );
  }
}