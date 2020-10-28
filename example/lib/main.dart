import 'package:flutter/material.dart';
import 'package:flutter_3d_obj/flutter_3d_obj.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget{
  MyApp();

  double brightness = 3.0;

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter 3D Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text("Flutter 3D"),
        ),
        body: new Center(
          child: new Object3D(
            size: const Size(400.0, 400.0),
            path: "assets/test.obj",
            asset: true,
            zoom: 200.0,
            brightness: widget.brightness,
            allowRotateY: false,
            adaptiveBrightness: 40,
            angleY: 135,
            angleZ: 90,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              child: Icon(Icons.brightness_low),
              onPressed: (){
                setState(() {
                  widget.brightness -= 0.5;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.brightness_high),
              onPressed: (){
                setState(() {
                  widget.brightness += 0.5;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
