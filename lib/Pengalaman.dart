import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aplikasi/models/ExperienceDataModel.dart';
import 'package:aplikasi/models/list_of_ExperienceData.dart';
import 'package:aplikasi/widgets/experience_profile_card.dart';
import 'package:http/http.dart' as http;

/**
 * author: Khansa Mahira
 * since: August 19, 2023
 */

class PengalamanPage extends StatefulWidget {
  PengalamanPage({Key? key}) : super(key: key);

  @override
  State<PengalamanPage> createState() => _PengalamanPageState();
}

class _PengalamanPageState extends State<PengalamanPage> {
  bool isLoading = true;
  ListOfExperiences? pengalamanKerja;
  ListOfExperiences? pengalamanVolunteer;
  ListOfExperiences? riwayatSekolah;

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengalaman Kerja"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SingleChildScrollView(
                child: ListView.builder(
                  itemCount: pengalamanKerja!.experiences.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final ExperienceDataModel experience = pengalamanKerja!.experiences[index];

                    return ExperienceProfileCard(
                      judul: experience.judul,
                      imageUrl: experience.imageUrl,
                      posisi: experience.posisi,
                      mulai: experience.mulai,
                      selesai: experience.selesai,
                    );
                  },
                )
              ),
              Text("Volunteer Experiences", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SingleChildScrollView(
                child: ListView.builder(
                  itemCount: pengalamanVolunteer!.experiences.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final ExperienceDataModel experience = pengalamanVolunteer!.experiences[index];

                    return ExperienceProfileCard(
                      judul: experience.judul,
                      imageUrl: experience.imageUrl,
                      posisi: experience.posisi,
                      mulai: experience.mulai,
                      selesai: experience.selesai,
                    );
                  },
                )
              ),
              Text("School Experiences", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SingleChildScrollView(
                child: ListView.builder(
                  itemCount: riwayatSekolah!.experiences.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final ExperienceDataModel experience = riwayatSekolah!.experiences[index];

                    return ExperienceProfileCard(
                      judul: experience.judul,
                      imageUrl: experience.imageUrl,
                      posisi: experience.posisi,
                      mulai: experience.mulai,
                      selesai: experience.selesai,
                    );
                  },
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> readJson() async {

    final String pengalamanKerjaResponse = await rootBundle.loadString('assets/PengalamanKerja.json');
    final String pengalamanVolunteerResponse = await rootBundle.loadString('assets/PengalamanVolunteer.json');
    final String riwayatSekolahResponse = await rootBundle.loadString('assets/RiwayatSekolah.json');
  
    final Map<String, dynamic> pengalamanKerjaData = json.decode(pengalamanKerjaResponse);
    ListOfExperiences pengalamanKerjaResult = ListOfExperiences.fromJson(pengalamanKerjaData);

    final Map<String, dynamic> pengalamanVolunteerData = json.decode(pengalamanVolunteerResponse);
    ListOfExperiences pengalamanVolunteerResult = ListOfExperiences.fromJson(pengalamanVolunteerData);

    final Map<String, dynamic> riwayatSekolahData = json.decode(riwayatSekolahResponse);
    ListOfExperiences riwayatSekolahResult = ListOfExperiences.fromJson(riwayatSekolahData);

    setState(() {
      pengalamanKerja = pengalamanKerjaResult;
      pengalamanVolunteer = pengalamanVolunteerResult;
      riwayatSekolah = riwayatSekolahResult;
    });

  }
}