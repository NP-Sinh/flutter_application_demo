// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(home: const MyHomePage(title: 'Demo'));
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//    Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Center(
//           child: Text('Xin Chao'),
//         ),
//       );
//     }
//   }

// appBar: AppBar(
//           title:  Text('Flutter Scaffold Example'),
//         ),
//         body: Center(
//             child: Text('Hello World')
//         ),
//         bottomNavigationBar: BottomAppBar(
//           shape: CircularNotchedRectangle(),
//           color: Colors.black12,
//           child: Container(
//             height: 50.0,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           tooltip: 'Increment Counter',
//           child: Icon(Icons.add),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         );

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: 'Demo App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('AppBar'),
//           automaticallyImplyLeading: true,
//         ),
//         body: Center(
//           child: Text('Xin Chao'),
//         ),
//         drawer: Drawer(
//           child: ListView(  
//             children: const<Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(color: Colors.red),
//               ),
//               child: Text(
//                 'My Drawer',
//                 style: TextStyle(
//                   color: Colors.green,
//                   fontSize: 24,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }


// App test 2
import 'package:flutter/material.dart';

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
        title: Text('AppBar Title'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text('Hello World.'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'My Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Gallery'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Slideshow'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
