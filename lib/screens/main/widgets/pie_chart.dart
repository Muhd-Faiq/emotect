// // import 'package:flutter/material.dart';
// // import 'package:fl_chart/fl_chart.dart';
// // import 'package:emotect/models/emotions.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:pie_chart/pie_chart.dart';
// // import '../../view.dart';
// // import '../main_viewmodel.dart';
// // import 'package:jwt_decode/jwt_decode.dart';

// // class ChartPie extends StatefulWidget {
// //   // const ChartPie({Key? key}) : super(key: key);

// //   @override
// //   _ChartPieState createState() => _ChartPieState();
// // }

// // class _ChartPieState extends State<ChartPie> {
// //   @override
// //   Widget build(BuildContext context) {
// //     Future<List<Emotions>> _futurelistemotion =
// //         MainViewmodel().getAllEmotions();

// //     return SizedBox(
// //       height: MediaQuery.of(context).size.height,
// //       width: MediaQuery.of(context).size.width,
// //       child: View(
// //         viewmodel: MainViewmodel(),
// //         builder: (context, viewmodel, _) => FutureBuilder<List<Emotions>>(
// //           future: _futurelistemotion,
// //           builder: (context, snapshot) {
// //             if (snapshot.hasData) {
// //               return SingleChildScrollView(
// //                 child: Column(
// //                   mainAxisSize: MainAxisSize.max,
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Center(
// //                       child: Column(
// //                         children: <Widget>[
// //                           Card(
// //                             child: Column(
// //                               children: <Widget>[
// //                                 PieChart(
// //                                   PieChartData(
// //                                     sections: [
// //                                       PieChartSectionData(
// //                                         color: const Color(0xff000000),
// //                                         value: 30,
// //                                         title: 'Red',
// //                                       ),
// //                                       PieChartSectionData(
// //                                         color: const Color(0xff000000),
// //                                         value: 30,
// //                                         title: 'Blue',
// //                                       ),
// //                                       PieChartSectionData(
// //                                         color: const Color(0xff000000),
// //                                         value: 40,
// //                                         title: 'Black',
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               );
// //             } else {
// //               return Container();
// //             }
// //           },
// //         ),
// //       ),
// //     );
// //   }

// // Widget build(BuildContext context) => Card(
// //       child: Column(
// //         children: <Widget>[
// //           PieChart(
// //             PieChartData(
// //               sections: [
// //                 PieChartSectionData(
// //                   color: const Color(0xff000000),
// //                   value: 30,
// //                   title: 'Red',
// //                 ),
// //                 PieChartSectionData(
// //                   color: const Color(0xff000000),
// //                   value: 30,
// //                   title: 'Blue',
// //                 ),
// //                 PieChartSectionData(
// //                   color: const Color(0xff000000),
// //                   value: 40,
// //                   title: 'Black',
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// // }

// import 'package:emotect/models/emotions.dart';
// import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';
// import '../../view.dart';
// import '../main_viewmodel.dart';
// import 'package:jwt_decode/jwt_decode.dart';

// class ChartPie extends StatefulWidget {
//   // final Map<String, double> _data;
//   // ChartPie(Map<String, double> data) : _data = data;

//   @override
//   _ChartPieState createState() => _ChartPieState();
// }

// class _ChartPieState extends State<ChartPie> {
//   Map<String, double> data = new Map();

//   // void initState() {
//   //   data.addAll({
//   //     'Happy': 37136,
//   //     'Angry': 69687,
//   //     'Sad': 40609,
//   //     'Disgust': 42544,
//   //     'Anxious': 42544,
//   //     'Neutral': 42544,
//   //     'LOL': 42544,
//   //   });
//   //   super.initState();
//   // }

//   double numangry = 0;
//   double numhappy = 0;
//   double numneutral = 0;
//   double numsad = 0;
//   double numdisgust = 0;
//   double numsurprise = 0;
//   double numfear = 0;

//   void getData() async {
//     dynamic listemo = await MainViewmodel().getAllEmotions();
//     if (listemo != null) {
//       print("good");
//     }
//     // dynamic listemo = await MainViewmodel().getAllEmotions();
//     // print(listemo[0].emotion);
//     // await listemo.forEach((value) => value.emotion.forEach((valueEmo) => {
//     //       if (valueEmo.contains("Happy"))
//     //         {numhappy = numhappy + 1}
//     //       else if (valueEmo.contains("Neutral"))
//     //         {numneutral = numneutral + 1}
//     //       else if (valueEmo.contains("Angry"))
//     //         {numangry = numangry + 1}
//     //       else if (valueEmo.contains("Sad"))
//     //         {numsad = numsad + 1}
//     //       else if (valueEmo.contains("Disgust"))
//     //         {numdisgust = numdisgust + 1}
//     //       else if (valueEmo.contains("Surprise"))
//     //         {numsurprise = numsurprise + 1}
//     //       else if (valueEmo.contains("Fear"))
//     //         {numfear = numfear + 1}
//     //       else
//     //         {print(valueEmo)}
//     //     }));
//     // data.addAll({
//     //   'Happy': numhappy,
//     //   'Angry': numangry,
//     //   'Sad': numsad,
//     //   'Disgust': numdisgust,
//     //   'Fear': numfear,
//     //   'Neutral': numneutral
//     // });
//   }

//   final List<Color> _colors = [
//     Colors.teal,
//     Colors.blueAccent,
//     Colors.amberAccent,
//     Colors.redAccent,
//     Colors.greenAccent,
//     Colors.purpleAccent
//   ];

//   // @override
//   // Widget build(BuildContext context) {
//   //   // Future<List<Emotions>> _futurelistemotion =
//   //   //     MainViewmodel().getAllEmotions();
//   //   // getData();

//   //   return SizedBox(
//   //     height: MediaQuery.of(context).size.height,
//   //     width: MediaQuery.of(context).size.width,
//   //     child: SingleChildScrollView(
//   //       child: Column(
//   //         mainAxisSize: MainAxisSize.max,
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Center(
//   //             child: Column(
//   //               children: <Widget>[
//   //                 SizedBox(
//   //                   height: 50,
//   //                 ),
//   //                 PieChart(
//   //                   dataMap: widget._data,
//   //                   colorList:
//   //                       _colors, // if not declared, random colors will be chosen
//   //                   animationDuration: Duration(milliseconds: 1500),
//   //                   chartLegendSpacing: 32.0,
//   //                   chartRadius: MediaQuery.of(context).size.width /
//   //                       2.7, //determines the size of the chart
//   //                   showChartValuesInPercentage: true,
//   //                   showChartValues: false,
//   //                   showChartValuesOutside: true,
//   //                   chartValueBackgroundColor: Colors.grey[200],
//   //                   showLegends: true,
//   //                   legendPosition: LegendPosition
//   //                       .right, //can be changed to top, left, bottom
//   //                   decimalPlaces: 1,
//   //                   showChartValueLabel: true,
//   //                   initialAngle: 0,
//   //                   chartValueStyle: defaultChartValueStyle.copyWith(
//   //                     color: Colors.blueGrey[900],
//   //                   ),
//   //                   chartType:
//   //                       ChartType.disc, //can be changed to ChartType.ring
//   //                 ),
//   //               ],
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // Future<List<Emotions>> _futurelistemotion =
//     //     MainViewmodel().getAllEmotions();

//     getData();
//     print("MainViewmodel().tdata");
//     print(MainViewmodel().tdata);
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: View(
//         viewmodel: MainViewmodel(),
//         builder: (context, viewmodel, _) =>
//             // FutureBuilder<List<Emotions>>(
//             //   future: _futurelistemotion,
//             //   builder: (context, snapshot) {
//             //     if (snapshot.hasData) {
//             // getData(snapshot.data);
//             // return
//             SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 50,
//                     ),
//                     if (MainViewmodel().tdata.isNotEmpty)
//                       PieChart(
//                         dataMap: MainViewmodel().tdata,
//                         colorList:
//                             _colors, // if not declared, random colors will be chosen
//                         animationDuration: Duration(milliseconds: 1500),
//                         chartLegendSpacing: 32.0,
//                         chartRadius: MediaQuery.of(context).size.width /
//                             2.7, //determines the size of the chart
//                         showChartValuesInPercentage: true,
//                         showChartValues: false,
//                         showChartValuesOutside: true,
//                         chartValueBackgroundColor: Colors.grey[200],
//                         showLegends: true,
//                         legendPosition: LegendPosition
//                             .right, //can be changed to top, left, bottom
//                         decimalPlaces: 1,
//                         showChartValueLabel: true,
//                         initialAngle: 0,
//                         chartValueStyle: defaultChartValueStyle.copyWith(
//                           color: Colors.blueGrey[900],
//                         ),
//                         chartType:
//                             ChartType.disc, //can be changed to ChartType.ring
//                       ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         //     } else {
//         //       return Container();
//         //     }
//         //   },
//         // ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class ChartPie extends StatefulWidget {
//   // const ChartPie({Key? key}) : super(key: key);

//   @override
//   _ChartPieState createState() => _ChartPieState();
// }

// class _ChartPieState extends State<ChartPie> {
//   @override
//   Widget build(BuildContext context) => Card(
//         child: Column(
//           children: <Widget>[
//             PieChart(
//               PieChartData(
//                 sections: [
//                   PieChartSectionData(
//                     color: const Color(0xff000000),
//                     value: 30,
//                     title: 'Red',
//                   ),
//                   PieChartSectionData(
//                     color: const Color(0xff000000),
//                     value: 30,
//                     title: 'Blue',
//                   ),
//                   PieChartSectionData(
//                     color: const Color(0xff000000),
//                     value: 40,
//                     title: 'Black',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
// }

import 'package:emotect/models/emotions.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../view.dart';
import '../main_viewmodel.dart';

class ChartPie extends StatefulWidget {
  // ChartPie({Key key, this.title})
  //     : super(key: key);
  // final String title;

  @override
  _ChartPieState createState() => _ChartPieState();
}

class _ChartPieState extends State<ChartPie> {
  Map<String, double> data = new Map();

  // void initState() {
  //   data.addAll({
  //     'Happy': 37136,
  //     'Angry': 69687,
  //     'Sad': 40609,
  //     'Disgust': 42544,
  //     'Anxious': 42544,
  //     'Neutral': 42544,
  //     'LOL': 42544,
  //   });
  //   super.initState();
  // }

  final List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.purpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    Future<List<Emotions>> _futurelistemotion =
        MainViewmodel().getAllEmotions();

    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.2,
      width: MediaQuery.of(context).size.width,
      child: View(
        viewmodel: MainViewmodel(),
        builder: (context, viewmodel, _) => FutureBuilder<List<Emotions>>(
          future: _futurelistemotion,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print("MainViewmodel().tdata");
              print(viewmodel.tdata);
              // getData(snapshot.data);
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          PieChart(
                            dataMap: viewmodel.tdata,
                            colorList:
                                _colors, // if not declared, random colors will be chosen
                            animationDuration: Duration(milliseconds: 1500),
                            chartLegendSpacing: 32.0,
                            chartRadius: MediaQuery.of(context).size.width /
                                2.7, //determines the size of the chart
                            showChartValuesInPercentage: true,
                            showChartValues: false,
                            showChartValuesOutside: true,
                            chartValueBackgroundColor: Colors.grey[200],
                            showLegends: true,
                            legendPosition: LegendPosition
                                .right, //can be changed to top, left, bottom
                            decimalPlaces: 1,
                            showChartValueLabel: true,
                            initialAngle: 0,
                            chartValueStyle: defaultChartValueStyle.copyWith(
                              color: Colors.blueGrey[900],
                            ),
                            chartType: ChartType
                                .disc, //can be changed to ChartType.ring
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
