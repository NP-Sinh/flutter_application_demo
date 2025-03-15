import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1050080155-NguyễnPhươngSinh")),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: IndexedStack(
          alignment: Alignment.center,
          index: this.selectedIndex,
          children: <Widget>[
            Container(width: 290, height: 210, color: Colors.green),
            Container(width: 250, height: 170, color: Colors.red),
            Container(width: 220, height: 150, color: Colors.yellow),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Next"),
        onPressed: () {
          setState(() {
            if (this.selectedIndex < 2) {
              this.selectedIndex++;
            } else {
              this.selectedIndex = 0;
            }
          });
        },
      ),
    );
  }
}
