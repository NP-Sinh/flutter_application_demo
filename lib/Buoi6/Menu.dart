import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Buoi6/BT4.dart';
import 'package:flutter_application_demo/Buoi6/UI_AlertDialog.dart';
import 'package:flutter_application_demo/Buoi6/UI_NamedRoute.dart';
import 'package:flutter_application_demo/Buoi6/UI_RouteTransition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPage(),
        '/alertdialog': (context) => const UIAlertDialog(),
        '/namedroute': (context) => const UINamedRoute(),
        '/routetransition': (context) => const RouteTransition(),
        '/baitap4': (context) => BT4(),
        // Các route phụ của UINamedRoute
        '/details': (context) => const Details(),
        '/about': (context) => const About(),
      },
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('1050080155 - Nguyễn Phương Sinh')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Chọn trang',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Alert Dialog'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/alertdialog');
              },
            ),
            ListTile(
              title: const Text('Named Route'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/namedroute');
              },
            ),
            ListTile(
              title: const Text('Route Transition'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/routetransition');
              },
            ),
            ListTile(
              title: const Text('Bài tập 4'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/baitap4');
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Chọn một trang từ menu Drawer')),
    );
  }
}
