import 'package:flutter/material.dart';
import 'body_center_container.dart';
import 'pie_chart.dart';

class Body extends StatelessWidget {
  // final Map<String, double> _data;
  // const Body(Map<String, double> data) : _data = data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ChartPie(),
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       ChartPie(),
        //     ],
        //   ),
        // ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: (MediaQuery.of(context).size.height / 2 + 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffffe494),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    ChartPie(),
                  ],
                ),
              ),
            ],
          ),
        ),
        BodyCenterContainer(),
      ],
    );
  }
}
