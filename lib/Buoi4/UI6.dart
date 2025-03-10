import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter SizedBox Example")),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            child: Text("Button "),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.redAccent,
              elevation: 10,
              minimumSize: Size(200, 200),
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
