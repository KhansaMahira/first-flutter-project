import 'package:flutter/material.dart';
import 'dart:convert';

/**
 * author: Khansa Mahira
 * since: August 5, 2023
 */

class PengalamanPage extends StatefulWidget {
  PengalamanPage({Key? key}) : super(key: key);

  @override
  State<PengalamanPage> createState() => _PengalamanPageState();
}

class _PengalamanPageState extends State<PengalamanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengalaman Kerja"),
      ),
      //backgroundColor: Color.fromARGB(255, 227, 227, 227),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //rincian experience
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ]
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}