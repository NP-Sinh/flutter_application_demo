import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  Color color = Color.fromARGB(
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  );
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Homework'),
      ),   
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;                
               Color color = Color.fromARGB(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                );
              });
            },
            child: const Text("Hãy Click vô đây"),
          ),
        ),
      ),
      backgroundColor: color,
    );
  }
}
