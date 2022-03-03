import 'package:flutter/material.dart';

class BodyCenterContainer extends StatelessWidget {
  // const BodyCenterContainer({Key? key}) : super(key: key);

  void _onSelfDetect() {
    print("123");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 115,
          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(80),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      type: MaterialType
                          .transparency, //Makes it usable on any background color, thanks @IanSmith
                      child: Ink(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          // color: Colors.indigo[900],
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          //This keeps the splash effect within the circle
                          borderRadius: BorderRadius.circular(
                              1000.0), //Something large to ensure a circle
                          onTap: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.people,
                              size: 33.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Detect\nEmotion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      type: MaterialType
                          .transparency, //Makes it usable on any background color, thanks @IanSmith
                      child: Ink(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          // color: Colors.indigo[900],
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          //This keeps the splash effect within the circle
                          borderRadius: BorderRadius.circular(
                              1000.0), //Something large to ensure a circle
                          // onTap: () =>
                          //     Navigator.pushNamed(context, "/selfdetection"),
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.face_retouching_natural,
                              size: 33.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Self\nDetection',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      type: MaterialType
                          .transparency, //Makes it usable on any background color, thanks @IanSmith
                      child: Ink(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          // color: Colors.indigo[900],
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          //This keeps the splash effect within the circle
                          borderRadius: BorderRadius.circular(
                              1000.0), //Something large to ensure a circle
                          onTap: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.bar_chart,
                              size: 33.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'View\nStatistics',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
