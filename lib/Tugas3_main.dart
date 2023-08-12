import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:boxicons/boxicons.dart';
import 'package:aplikasi/Profil.dart';
import 'package:aplikasi/Pengalaman.dart';

/**
 * author: Khansa Mahira
 * since: August 5, 2023
 */

void main() {
  runApp(MyApp());
}

// source: https://www.youtube.com/watch?v=Al8acNZzmxI&list=RDAl8acNZzmxI&start_radio=1
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color.fromARGB(0, 255, 255, 255)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomTabBar(),
    );
  }
}

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  Color _backgroundColor = Colors.white;
  int _index = 0;
  final screens = [
    ProfilPage(),
    PengalamanPage(),
    //_gantiWarnaBackgroundButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },

        backgroundColor: Color.fromARGB(255, 227, 227, 227),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bxs_user),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bx_briefcase_alt_2),
            label: 'Pengalaman',
          ),
          /*
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bx_palette),
            label: 'Ganti Warna Background',
          ),
          */
        ],
      ),
    );
  }
}