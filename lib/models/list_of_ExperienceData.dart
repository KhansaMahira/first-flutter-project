import 'package:aplikasi/models/ExperienceDataModel.dart';

/**
 * author: Khansa Mahira
 * since: August 19, 2023
 */

class ListOfExperiences {
  ListOfExperiences({
    this.experiences = const <ExperienceDataModel>[],
  });

  List<ExperienceDataModel> experiences;

  factory ListOfExperiences.fromJson(Map<String, dynamic> json) {
    List<ExperienceDataModel> result = [];

    for (var element in json['experiences']) {
      ExperienceDataModel experience = ExperienceDataModel(
        judul: element['judul'],
        imageUrl: element['imageUrl'],
        posisi: element['posisi'],
        mulai: element['mulai'],
        selesai: element['selesai'],
      );

      result.add(experience);
    }

    return ListOfExperiences(experiences: result);
  }
}