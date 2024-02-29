import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/Data/list_of_surahs.dart';
import '../../Fields/surah_field.dart';
import '../../ModelClass/surah_model_class.dart';


class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  @override
  Widget build(BuildContext context) {
    GetData getData=GetData();
    List<SurahNameModelList> allSurahName=getData.getSurahName();
    return ListView.separated(
      itemCount: allSurahName.length,
        separatorBuilder: (context, index) => Divider(color: Color(0xFF7B80AD).withOpacity(0.4)),
        itemBuilder: (context, index) {
        return SurahTabBarField(surahNameModelList: allSurahName[index],);
        },);
  }
}
