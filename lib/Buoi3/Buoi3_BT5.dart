import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Banner',
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
      appBar: AppBar(title: const Text("Banner Example")),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.topCenter,
          child: Banner(
            message: 'Offer 20% off',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              height: 186,
              width: 280,
              child: Image.network(
                'https://th.bing.com/th/id/R.ea4f0b861432984fd41c0fd8585774f9?rik=q9nYWylLD1ZfXA&riu=http%3a%2f%2fwww.lambanhngon.com%2fnews_pictures%2fcjn1473040618.jpg&ehk=K9duurwTsfwsAJsMGy1tjtQ%2bnHb%2becsIsp7rjNCJCtQ%3d&risl=&pid=ImgRaw&r=0',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
