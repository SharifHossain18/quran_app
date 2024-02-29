import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TabBar extends StatelessWidget {
   final String tabText;
  const TabBar({super.key,
  required this.tabText,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(tabText,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,

        ),
        )
    );
  }
}
