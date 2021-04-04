import 'package:cosmemo/table-list-view.dart';
import 'package:flutter/material.dart';
import 'package:cosmemo/take-picture-screen.dart';
import 'package:camera/camera.dart';

class Homescreen extends StatelessWidget {
  final CameraDescription camera;
  const Homescreen({Key key, this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TakePictureScreen(
                camera: camera,
              ),
            ),
          )
        },
        icon: Icon(Icons.add),
        label: const Text('コスメを追加'),
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      'Cosmemo',
      style: TextStyle(color: Theme.of(context).primaryColor),
    ),
  );
}
