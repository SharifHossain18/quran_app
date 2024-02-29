import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
class GreetingsPortion extends StatelessWidget {
  const GreetingsPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Assalamualikum",
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: text
          ),
        ),
        Text("Sharif Hossain",
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),
        ),
        SizedBox(height: 24,),
        Stack(
          children: [
            Container(
              height: 131,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFDF98FA),Color(0xFFB070FD),Color(0xFF9055FF)])
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset("lib/Assets/quran.svg")),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("lib/Assets/book.svg"),
                      SizedBox(width: 10,),
                      Text("Last Read",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Text("Al Fatiha",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Ayat No:1",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                        fontSize: 14
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
