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

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

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

  void getData() {
    data.addAll({
      'Happy': 37136,
      'Angry': 69687,
      'Sad': 40609,
      'Disgust': 42544,
      'Anxious': 42544,
      'Neutral': 42544,
      'LOL': 10001,
    });
  }

  List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.indigoAccent,
  ];

  @override
  Widget build(BuildContext context) {
    getData();
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          PieChart(
            dataMap: data,
            colorList: _colors, // if not declared, random colors will be chosen
            animationDuration: Duration(milliseconds: 1500),
            chartLegendSpacing: 32.0,
            chartRadius: MediaQuery.of(context).size.width /
                2.7, //determines the size of the chart
            showChartValuesInPercentage: true,
            showChartValues: false,
            showChartValuesOutside: true,
            chartValueBackgroundColor: Colors.grey[200],
            showLegends: true,
            legendPosition:
                LegendPosition.right, //can be changed to top, left, bottom
            decimalPlaces: 1,
            showChartValueLabel: true,
            initialAngle: 0,
            chartValueStyle: defaultChartValueStyle.copyWith(
              color: Colors.blueGrey[900],
            ),
            chartType: ChartType.disc, //can be changed to ChartType.ring
          ),
        ],
      ),
    );
  }
}
