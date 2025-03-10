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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Column Example")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(child: Text("Button 1"), onPressed: () {}),
            Expanded(
              flex: 1,
              child: Icon(Icons.ac_unit, size: 48, color: Colors.blue),
            ),
            ElevatedButton(
              child: Text("Button 2"),
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size.square(70)),
              ),
            ),
            Spacer(flex: 1),
            ElevatedButton(child: Text("Very Long Button 3"), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
