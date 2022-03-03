// // @dart=2.9
// import 'package:flutter/material.dart';

// import 'app/dependencies.dart' as di;
// import 'app/router.dart';
// import 'package:camera/camera.dart';

// List<CameraDescription> cameras = [];
// Future<void> main() async {
//   try {
//     WidgetsFlutterBinding.ensureInitialized();
//     cameras = await availableCameras();
//   } on CameraException catch (e) {
//     print('Error in fetching the cameras: $e');
//   }
//   di.init();

//   runApp(
//     MaterialApp(
//       title: 'MVVM Template',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.amber),
//       initialRoute: '/',
//       onGenerateRoute: createRoute,
//     ),
//   );
// }

// @dart=2.9
import 'package:flutter/material.dart';

import 'app/dependencies.dart' as di;
import 'app/router.dart';

void main() {
  di.init();

  runApp(
    MaterialApp(
      title: 'MVVM Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      onGenerateRoute: createRoute,
    ),
  );
}
