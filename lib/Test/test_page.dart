//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:quran_app/Test/data.dart';
// import 'package:quran_app/Test/main_page.dart';
// import 'package:quran_sharif/quran_sharif.dart';
//
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     List<Surahs> getAllSurahs=Quran.getAllSurah();
//     GetData getData=GetData();
//     var surahName= getData.getSurahName();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Quran App"),
//         centerTitle: true ,
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 showSearch(
//                     context: context,
//                     delegate: MySearchField(searchResults: surahName));
//               },
//               icon: Icon(Icons.search))
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//               child: ListView.builder(
//                 itemCount: getAllSurahs.length,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         side: BorderSide(
//                           color: Colors.green,
//                           width: 1.5
//                         )
//                       ),
//                       margin: EdgeInsets.all(10),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: InkWell(
//                             onTap: () {
//                                   Get.to(MainPage(surahName: "${getAllSurahs[index].number.toString()} ${getAllSurahs[index].englishName}"));
//                             },
//                             child: Row(
//                               children: [
//                                 Text(getAllSurahs[index].number.toString()),
//                                 SizedBox(width: 5,),
//                                 Text(getAllSurahs[index].englishName),
//                                 Spacer(),
//                                 Text(getAllSurahs[index].name),
//                               ],
//                             ),
//                           ),
//                         ));
//                   },))
//               ],
//       ),
//     );
//   }
// }
//
//
// class MySearchField extends SearchDelegate{
//   final List searchResults;
//     MySearchField({required this.searchResults});
//
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     [
//       IconButton(
//           onPressed: () {
//
//           },
//           icon: Icon(Icons.home)),
//     ];
//   }
//   @override
//   Widget? buildLeading(BuildContext context) {
//     IconButton(
//       onPressed: () {
//         query='';
//       },
//       icon: Icon(Icons.search),
//       color: Colors.red,
//     );
//   }
//   @override
//   Widget buildResults(BuildContext context) {
//     return MainPage(surahName: query);
//   }
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List suggestions=searchResults.where((element) {
//       final result=element.toLowerCase();
//       final input=query.toLowerCase();
//       return result.contains(input);
//
//     }).toList();
//     return ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder:(context, index) {
//         final suggestion=suggestions[index];
//         return ListTile(
//           title: Text(suggestion),
//           onTap: () {
//             query=suggestion;
//             showResults(context);
//           },
//         );
//       }, );
//   }
// }