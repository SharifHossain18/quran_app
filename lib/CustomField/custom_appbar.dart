
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/constants.dart';

AppBar appBar=AppBar(
  backgroundColor: background,
  automaticallyImplyLeading: false,
  elevation: 0,
  title: Row(
    children: [
      IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.menu),
      color: Colors.white,
      ),
      SizedBox(width: 24,),
      Text("Quran App",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
      ),
      Spacer(),
      IconButton(
          onPressed: (){
            
          },
          icon: Icon(Icons.search),
      color: Colors.white,
      )
    ],
  ),
);

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String appbarText;
 final double height;
 final Icon icon;

   CustomAppBar({super.key,
     required this.appbarText,
     this.height=kToolbarHeight,
     required this.icon,
  });

  @override
  // TODO: implement preferredSize
  // final Size preferredSize;
  Size get preferredSize =>  Size.fromHeight(height);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              Get.back();
            },
            icon: icon,
            color: Colors.white,
          ),

          SizedBox(width: 24,),
          Text(appbarText,
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.search),
            color: Colors.white,
          )
        ],
      )
    );


  }


}
