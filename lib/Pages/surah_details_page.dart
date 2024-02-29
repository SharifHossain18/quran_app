import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/CustomField/custom_appbar.dart';
import 'package:quran_app/Data/list_of_surahs.dart';
import 'package:quran_app/ModelClass/surah_details_model_class.dart';
import '../Fields/surah_details.dart';
import '../Fields/surah_text_details.dart';

class SurahDeatailSPage extends StatefulWidget {
  final String surahNumber;
  final String surahName;
  const SurahDeatailSPage({super.key,
  required this.surahNumber,
    required this.surahName
  });

  @override
  State<SurahDeatailSPage> createState() => _SurahDeatailSPageState();
}

class _SurahDeatailSPageState extends State<SurahDeatailSPage> {
  AudioPlayer player = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.stopped;
  bool isPlaying=false;

  @override
  void initState() {
    super.initState();
    player.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        audioPlayerState = state;
      });
    });
  }

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

  void _pause() async {
    await player.pause();
  }

  void _stop() async {
    await player.stop();
  }


  @override
  Widget build(BuildContext context) {
    GetData getData=GetData();
    SurahDetailsModelClass surahDetailsModelClass=getData.getSurahFullText(int.parse(widget.surahNumber)-1,widget.surahName);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: background,
        backgroundColor: Colors.white,
        appBar: CustomAppBar(icon: Icon(Icons.arrow_back),appbarText: widget.surahName),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(

                child: Details(surahDetailsModelClass: surahDetailsModelClass),
              )
            ],
          body: SurahTextDeatils(surahDetailsModelClass: surahDetailsModelClass),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.volume_up),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "home"),
          BottomNavigationBarItem(icon: IconButton(
              onPressed: () async{
                if(isPlaying){
                  _pause();
                  isPlaying=!isPlaying;
                }
                else{
                  playList(surahDetailsModelClass.surahAudioLink);
                  isPlaying=!isPlaying;
                }
              },
              icon: Icon(
                  isPlaying ? Icons.arrow_forward: Icons.pause
              )),label: isPlaying ? "Playing": "Muted")
        ]),
      ),
    );
  }
}
