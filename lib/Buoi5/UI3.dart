import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UI3(),
    );
  }
}

class UI3 extends StatelessWidget {
  UI3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1050080155-NguyễnPhươngSinh")),
      body: CircleAvatar(
        radius: 110,
        backgroundColor: Colors.greenAccent[400],
        child: Text('TVH', style: TextStyle(fontSize: 90, color: Colors.white)),
      ),
    );
  }
}
