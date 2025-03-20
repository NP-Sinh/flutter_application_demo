import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UI4(),
    );
  }
}

class UI4 extends StatelessWidget {
  UI4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1050080155-NguyễnPhươngSinh")),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.directions_bus),
          onPressed: () {
            print("Pressed");
          },
          splashRadius: 100,
          splashColor: Colors.blue,
          highlightColor: Colors.red,
        ),
      ),
    );
  }
}
