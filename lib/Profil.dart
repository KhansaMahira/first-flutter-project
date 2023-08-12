import 'package:aplikasi/Pengalaman.dart';
import 'package:flutter/material.dart';

/**
 * author: Khansa Mahira
 * since: August 5, 2023
 */

class ProfilPage extends StatefulWidget {
  ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Diri"),
      ),
      //backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*CircleAvatar(
              radius: 100,
              child: Image.network('https://drive.google.com/file/d/1czFm6iL9X8JwcRn7_rsc8okrxVmTvmuK/view?usp=sharing'),
              // source: https://www.youtube.com/watch?v=7NgaCRXuqOc
              // source: https://www.youtube.com/watch?v=ESB5xyFBvhY
            ),
            */
            Image.network(
              'https://drive.google.com/file/d/1czFm6iL9X8JwcRn7_rsc8okrxVmTvmuK/view?usp=sharing',
              width: 250,
              height: 250,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Khansa Mahira',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Jakarta Utara',
            ),
            Text(
              '081806727726'
            ),
            Text(
              'khansamahira011@gmail.com'
            ),
            Text(
              ''
            ),
            Text(
              'Tentang Saya:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Saya merupakan seorang mahasiswa jurusan sistem informasi. Saya gemar mempelajari hal-hal baru terutama yang berhubungan dengan teknologi. Saya juga mampu menyesuaikan diri dengan lingkungan dan mengorganisir waktu saya untuk belajar dan melakukan kegiatan bermanfaat lainnya.\n'
            ),
            ElevatedButton(
              child: Text('Lanjut ke Pengalaman Kerja'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PengalamanPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}