/**
 * author: Khansa Mahira
 * since: August 19, 2023
 */

class ExperienceDataModel {
  final String judul;
  final String imageUrl;
  final String posisi;
  final String mulai;
  final String selesai;

  ExperienceDataModel(
    {
      required this.judul,
      required this.imageUrl,
      required this.posisi,
      required this.mulai,
      required this.selesai,
    }
  );

  factory ExperienceDataModel.fromJson(Map<String,String> json)
  { return ExperienceDataModel(
      judul: json['judul'] as String,
      imageUrl: json['imageUrl'] as String,
      posisi: json['posisi'] as String,
      mulai: json['mulai'] as String,
      selesai: json['selesai'] as String,
    );
  }
}