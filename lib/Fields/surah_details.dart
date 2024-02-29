
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/ModelClass/surah_details_model_class.dart';

import '../constants.dart';

class Details extends StatelessWidget {
  final SurahDetailsModelClass surahDetailsModelClass;
  const Details({super.key,
  required this.surahDetailsModelClass
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFDF98FA),Color(0xFFB070FD),Color(0xFF9055FF)])
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(surahDetailsModelClass.surahName,
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                  ),
                  Text(surahDetailsModelClass.surahEnglishName,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      color: Colors.white.withOpacity(0.35),
                      thickness: 3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(surahDetailsModelClass.surahReveltionType,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: text
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("${surahDetailsModelClass.surahTotalayat} Ayat",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/Assets/bismillah.png"),
                        fit: BoxFit.fill
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ],
    );

  }
}
