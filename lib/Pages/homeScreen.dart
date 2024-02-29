
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/Fields/greetings.dart';
import 'package:quran_app/Pages/Tabs/page_tab.dart';
import 'package:quran_app/Pages/Tabs/parah_tab.dart';
import 'package:quran_app/Pages/Tabs/surah_tab.dart';
import 'package:quran_app/constants.dart';

import '../CustomField/custom_appbar.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: appBar,
      body: DefaultTabController(
        length: 4,
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverToBoxAdapter(
                  child: GreetingsPortion(),

                ),
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: background,
                  shape: Border(
                    bottom: BorderSide(
                      width: 3,
                      color: Color(0xFFAAAAAA).withOpacity(0.1)
                    )
                  ),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(0),
                      child: TabBar(
                          unselectedLabelColor: text,
                          labelColor: Colors.white,
                          indicatorColor: primary,
                          indicatorWeight: 3,
                          tabs: [
                        Tab(child: Text("Surah"),),
                        Tab(child: Text("Doa"),),
                        Tab(child: Text("Hifz"),),
                        Tab(child: Text("Hifz"),),
                      ])),
                )
              ],
              body: TabBarView(children: [
                SurahTab(),PageTab(),ParahTab(),ParahTab()
              ])),

        ),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: gray,
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: Image.asset("lib/Assets/quran.png",width: 40,height: 40,),label: "Quran"),
        BottomNavigationBarItem(icon: Image.asset("lib/Assets/favourite.png",width: 40,height: 40,),label: "Favourite"),
        BottomNavigationBarItem(icon: Image.asset("lib/Assets/doa.png",width: 40,height: 40,),label: "Doa"),

      ]),

    );
  }
}

