class ExperienceDataModel {
  String? judul;
  String? imageUrl;
  String? posisi;
  String? mulai;
  String? selesai;

  ExperienceDataModel(
    {
      this.judul,
      this.imageUrl,
      this.posisi,
      this.mulai,
      this.selesai
    }
  );

  ExperienceDataModel.fromJson(Map<String,String> json)
  {
    judul = json['judul'];
    imageUrl = json['imageUrl'];
    posisi = json['posisi'];
    mulai = json['mulai'];
    selesai = json['selesai'];
  }
}

// source: https://www.youtube.com/watch?v=vpFxmFl5cUk