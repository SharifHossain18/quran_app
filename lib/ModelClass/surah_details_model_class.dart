
class SurahDetailsModelClass{
  String surahName;
  String surahEnglishName;
  String surahTotalayat;
  String surahReveltionType;
  List<String> surahAudioLink;
  List<String> surahFullText;

  SurahDetailsModelClass({required this.surahName,
    required this.surahFullText,
    required this.surahTotalayat,
    required this.surahAudioLink,
    required this.surahReveltionType,
    required this.surahEnglishName});


}