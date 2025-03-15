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
      appBar: AppBar(title: Text("1050080155-Nguyễn Phương Sinh")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                ElevatedButton(child: Text("B1"), onPressed: () {}),
                Expanded(
                  flex: 3,
                  child: Icon(Icons.ac_unit, size: 32, color: Colors.red),
                ),
                ElevatedButton(
                  child: Text("B2"),
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(90, 30)),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Icon(Icons.add_circle, size: 96, color: Colors.green),
                ),
                ElevatedButton(child: Text("Btn 3"), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
