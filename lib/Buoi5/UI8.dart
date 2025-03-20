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
      home: UI8(),
    );
  }
}

class UI8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1050080155-NguyễnPhươngSinh')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show SnackBar'),
          onPressed: () {
            _showSnackBarMsgDeleted(context);
          },
        ),
      ),
    );
  }

  void _showSnackBarMsgDeleted(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Message is deleted!'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          _showSnackBarMsgRestored(context);
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showSnackBarMsgRestored(BuildContext context) {
    final snackBar = SnackBar(content: Text('Message is restored!'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
