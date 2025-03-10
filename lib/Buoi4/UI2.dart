import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            margin: const EdgeInsets.all(20),
            color: Colors.blueGrey,
            child: Stack(
              children: <Widget>[
                Container(height: 100, width: 300, color: Colors.green),
                Transform(
                  alignment: FractionalOffset.topLeft,
                  transform: Matrix4.skewY(0.7),
                  child: Container(height: 100, width: 300, color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
