import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Buoi5/UI1.dart';
import 'package:flutter_application_demo/Buoi5/UI2.dart';
import 'package:flutter_application_demo/Buoi5/UI3.dart';
import 'package:flutter_application_demo/Buoi5/UI4.dart';
import 'package:flutter_application_demo/Buoi5/UI5.dart';
import 'package:flutter_application_demo/Buoi5/UI6.dart';
import 'package:flutter_application_demo/Buoi5/UI7.dart';
import 'package:flutter_application_demo/Buoi5/UI8.dart';
import 'package:flutter_application_demo/Buoi5/UI9.dart';
import 'package:flutter_application_demo/Buoi5/UI10.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1050080155-NguyễnPhươngSinh'),
        automaticallyImplyLeading: true,
      ),
      body: Center(child: Text('Nguyễn Phương Sinh')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'My Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('RotatedBox'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI1()),
                );
              },
            ),
            ListTile(
              title: Text('Card'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI2()),
                );
              },
            ),
            ListTile(
              title: Text('CircleAvatar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI3()),
                );
              },
            ),
            ListTile(
              title: Text('IconButton'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI4()),
                );
              },
            ),
            ListTile(
              title: Text('FlatButton'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI5()),
                );
              },
            ),
            ListTile(
              title: Text('TextButton'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI6()),
                );
              },
            ),
            ListTile(
              title: Text('ElevatedButton'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI7()),
                );
              },
            ),
            ListTile(
              title: Text('SnackBar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI8()),
                );
              },
            ),
            ListTile(
              title: Text('UI 9'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI9()),
                );
              },
            ),
            ListTile(
              title: Text('SimpleDialog'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UI10()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
