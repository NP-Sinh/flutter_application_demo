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
      home: UI2(),
    );
  }
}

class UI2 extends StatelessWidget {
  UI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1050080155-NguyễnPhươngSinh")),
      body: Card(
        margin: EdgeInsets.all(10),
        elevation: 20,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        shadowColor: Colors.green[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, color: Colors.cyan, size: 45),
              title: Text(
                "Let's Talk About Love",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Modern Talking Album'),
            ),
          ],
        ),
      ),
    );
  }
}
