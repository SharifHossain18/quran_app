
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/ModelClass/surah_details_model_class.dart';
import 'package:audioplayers/audioplayers.dart';
import '../constants.dart';


class SurahTextDeatils extends StatelessWidget {
  final SurahDetailsModelClass surahDetailsModelClass;
  const SurahTextDeatils({super.key,
  required this.surahDetailsModelClass
  });

  @override
  Widget build(BuildContext context) {
    AudioPlayer player= AudioPlayer();
    void playList(list) async{
      player.play(UrlSource(list[0]));
      int i =1;
      player.onPlayerComplete.listen((_) {
        if (i<list.length) {
          player.play(UrlSource(list[i]));
          i++;
        }
      });
    }


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: gray,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primary,
                          ),
                          child: Center(
                            child: Text("${index+1}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              // playList(surahDetailsModelClass.surahAudioLink);
                            },
                            icon: Icon(Icons.play_arrow),
                        color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Text(surahDetailsModelClass.surahFullText[index],
                  style: GoogleFonts.amiri(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,

                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 10,),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Container();
          },
          itemCount: int.parse(surahDetailsModelClass.surahTotalayat)),
    );
  }
}
