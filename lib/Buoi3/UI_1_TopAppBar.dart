import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AppBar Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Title'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.file_upload),
            onPressed: () => print("Click on upload button"),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => print("Click on settings button"),
          ),
          PopupMenuButton<int>(
            icon: const Icon(Icons.share),
            onSelected: (value) {
              if (value == 1) print("Facebook selected");
              if (value == 2) print("Instagram selected");
            },
            itemBuilder:
                (context) => [
                  const PopupMenuItem<int>(value: 1, child: Text("Facebook")),
                  const PopupMenuItem<int>(value: 2, child: Text("Instagram")),
                ],
          ),
        ],
      ),
      body: Center(child: Text("Flutter AppBar Tutorial")),
    );
  }
}
