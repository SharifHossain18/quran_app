
import 'package:flutter/material.dart';
import 'package:quran_sharif/quran_sharif.dart';

class MainPage extends StatelessWidget {
  final String surahName;
  const MainPage({super.key,
  required this.surahName
  });

  @override
  Widget build(BuildContext context) {
    List<Surahs> getAllSurahs=Quran.getAllSurah();
    int surahIndex=int.parse(surahName.substring(0,surahName.indexOf(" ")))-1;
    return Scaffold(
      appBar: AppBar(
        title: Text(surahName),
      ),
           body: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Center(child: Text(getAllSurahs[surahIndex].name)),
                 Expanded(
                   child: ListView.builder(
                     shrinkWrap: true,
                     itemCount: getAllSurahs[surahIndex].ayahs.length,
                     itemBuilder: (context, index) {
                       return Column(
                         children: [
                           Text("${getAllSurahs[surahIndex].ayahs[index].text} $index",
                           style: TextStyle(
                             fontSize: 20
                           ),
                           ),
                           Divider(color: Colors.black,)
                         ],
                       );
                     },),
                 ),
               ],
             ),
           )
    );
  }
}
