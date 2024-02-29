

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Pages/homeScreen.dart';
import '../constants.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//    Timer(Duration(seconds: 3), () {
//      Get.to(HomePage());
//    });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green.withOpacity(0.6),
//       body:Center(
//         child: Container(
//           height: 200,
//           width: 400,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("lib/Assets/quran_app.jpg")
//             ),
//
//           ),
//         ),
//       )
//
//     );
//   }
// }


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.to(HomeScreenPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:background,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Quran App",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 16,),
                Text("Learn Quran and\n Recite once Everyday",
                  style: GoogleFonts.poppins(
                      color: text,
                      fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF672CBC),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: SvgPicture.asset("lib/Assets/splash.svg"),
                    ),
                    // Positioned(
                    //   left: 0,
                    //   right: 0,
                    //   bottom: -23,
                    //   child: Center(
                    //     child: InkWell(
                    //       onTap: () {
                    //         Get.to(HomeScreenPage());
                    //       },
                    //       child: Container(
                    //         padding: EdgeInsets.symmetric(horizontal: 40,vertical: 16),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(30),
                    //           color: orange
                    //         ),
                    //         child: Text("Get Started",
                    //         style: GoogleFonts.poppins(
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.w600
                    //         ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )

                  ],
                )
              ],
            ),
          )),
    );
  }
}
