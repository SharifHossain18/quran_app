import 'package:quran_app/ModelClass/surah_details_model_class.dart';
import 'package:quran_app/ModelClass/surah_model_class.dart';
import 'package:quran_sharif/quran_sharif.dart';

class GetData{
  List<Surahs> getAllSurahs=Quran.getAllSurah();
  List<SurahNameModelList> allSurahName=[];


  //Surah Name Function
  getSurahName(){
    getAllSurahs.forEach((element) {
      SurahNameModelList surahNameModelList=SurahNameModelList(
          surahNumber: element.number.toString(),
          surahArabicName: element.name,
          surahName: element.englishName,
          surahReveltionType: element.revelationType,
          surahTotalVerses: element.ayahs.length.toString());
      allSurahName.add(surahNameModelList);
    });
    return allSurahName;
  }


//Surah Text Function
//   int surahNumber=1;
  List<String> fullSurahText=[];
  List<String> fullSurahAudioLink=[];

  getSurahFullText(int surahNumber, String surahName){
    getAllSurahs[surahNumber].ayahs.forEach((element) {
      fullSurahText.add(element.text);
      fullSurahAudioLink.add(element.audio);
    }
    );
    SurahDetailsModelClass surahDetailsModelClass=SurahDetailsModelClass(
        surahName: surahName,
        surahEnglishName: getAllSurahs[surahNumber].englishNameTranslation,
        surahAudioLink: fullSurahAudioLink,
        surahReveltionType: getAllSurahs[surahNumber].revelationType,
        surahTotalayat: getAllSurahs[surahNumber].ayahs.length.toString(),
        surahFullText: fullSurahText);

    return surahDetailsModelClass;
  }
  
}