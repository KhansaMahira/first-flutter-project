import 'package:flutter/widgets.dart';

/**
 * author: Khansa Mahira
 * since: August 19, 2023
 */

class ExperienceProfileCard extends StatelessWidget {
  const ExperienceProfileCard({
    super.key,
    required this.judul,
    required this.imageUrl,
    required this.posisi,
    required this.mulai,
    required this.selesai,
  });

  final String judul;
  final String imageUrl;
  final String posisi;
  final String mulai;
  final String selesai;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(judul),
        Image.network(
          imageUrl,
          width: 50,
          //height: 100,
        ),
        Text(posisi),
        Text(mulai),
        Text(selesai),
      ],
    );
  }
}