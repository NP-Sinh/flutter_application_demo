import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _value = 0;
  bool _working = false;

  void startWorking() async {
    setState(() {
      _working = true;
      _value = 0;
    });
    for (int i = 0; i < 10; i++) {
      if (!_working) break;
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        _value += 0.1;
      });
    }
    setState(() {
      _working = false;
    });
  }

  void stopWorking() {
    setState(() {
      _working = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter CircularProgressIndicator Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: _value,
                backgroundColor: Colors.cyanAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Percent: ${(_value * 100).round()}%",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Start"),
              onPressed: _working ? null : startWorking,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Stop"),
              onPressed: !_working ? null : stopWorking,
            ),
          ],
        ),
      ),
    );
  }
}
