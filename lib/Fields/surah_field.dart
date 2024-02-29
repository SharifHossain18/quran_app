import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/ModelClass/surah_model_class.dart';
import 'package:quran_app/Pages/surah_details_page.dart';
import 'package:quran_app/constants.dart';
class SurahTabBarField extends StatelessWidget {
  final SurahNameModelList surahNameModelList;
  const SurahTabBarField({super.key,
  required this.surahNameModelList
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(SurahDeatailSPage(surahNumber: surahNameModelList.surahNumber,
          surahName: surahNameModelList.surahName,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
           Stack(
             children: [
               SvgPicture.asset("lib/Assets/surah.svg"),
               Positioned(
                 left: 0,
                 bottom: 0,
                 top: 0,
                 right: 0,
                 child: Center(
                   child: Text(surahNameModelList.surahNumber,
                   style: GoogleFonts.poppins(
                     color: text,
                     fontSize: 12
                   ),
                   ),
                 ),
               ),
             ],
           ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(surahNameModelList.surahName,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
                ),
                Row(
                  children: [
                    Text(surahNameModelList.surahReveltionType,
                      style: GoogleFonts.poppins(
                          color: text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: text
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("${surahNameModelList.surahTotalVerses} varses",
                      style: GoogleFonts.poppins(
                          color: text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Text(surahNameModelList.surahArabicName,
              style: GoogleFonts.amiri(
                  color: primary,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),
      ),
    );;
  }
}
