import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(title: const Text("BottomAppBar Example")),
      body: const Center(child: Text('Flutter BottomAppBar Example')),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            PopupMenuButton<int>(
              icon: const Icon(Icons.share),
              itemBuilder:
                  (context) => <PopupMenuEntry<int>>[
                    const PopupMenuItem<int>(value: 1, child: Text("Facebook")),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text("Instagram"),
                    ),
                  ],
            ),
            IconButton(icon: const Icon(Icons.email), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
