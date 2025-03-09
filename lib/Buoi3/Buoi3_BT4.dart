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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_car),
                    SizedBox(width: 5),
                    Text("Car"),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_transit),
                    SizedBox(width: 5),
                    Text("Transit"),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_bike),
                    SizedBox(width: 5),
                    Text("Bike"),
                  ],
                ),
              ),
            ],
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
          ),
          title: const Text('Flutter Tabs Example'),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Car")),
            Center(child: Text("Transit")),
            Center(child: Text("Bike")),
          ],
        ),
      ),
    );
  }
}
