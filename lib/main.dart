import 'dart:async';

import 'package:cosmemo/home-screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(
    camera: firstCamera,
  ));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;
  const MyApp({Key key, this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cosmemo',
      theme: ThemeData(
          primarySwatch: customSwatch, accentColor: customAccentColor),
      //home: Homescreen(),
      home: Homescreen(camera: camera),
    );
  }
}
