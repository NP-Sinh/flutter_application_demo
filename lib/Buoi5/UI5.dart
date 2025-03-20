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
      home: UI5(),
    );
  }
}

class UI5 extends StatelessWidget {
  UI5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1050080155-NguyễnPhươngSinh")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              icon: Icon(Icons.add_shopping_cart, color: Colors.white),
              label: Text("Dark", style: TextStyle(color: Colors.white)),
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
            TextButton.icon(
              icon: Icon(Icons.add_shopping_cart, color: Colors.black),
              label: Text("Light", style: TextStyle(color: Colors.black)),
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
            TextButton.icon(
              icon: Icon(Icons.monetization_on, color: Colors.white),
              label: Text("Dark", style: TextStyle(color: Colors.white)),
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
            TextButton.icon(
              icon: Icon(Icons.monetization_on, color: Colors.black),
              label: Text("Light", style: TextStyle(color: Colors.black)),
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
