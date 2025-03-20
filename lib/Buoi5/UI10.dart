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
      home: UI10(),
    );
  }
}

class UI10 extends StatefulWidget {
  UI10({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return UI10State();
  }
}

class UI10State extends State<UI10> {
  ProgrammingLanguage? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1050080155-NguyễnPhươngSinh")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Select a Language"),
              onPressed: () {
                showMyAlertDialog(context);
              },
            ),
            SizedBox(height: 5),
            Text(
              "Selected Language: ${selectedLanguage?.name ?? '?'}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void showMyAlertDialog(BuildContext context) {
    var languages = [
      ProgrammingLanguage("Javascript", 67.7),
      ProgrammingLanguage("HTML/CSS", 63.1),
      ProgrammingLanguage("SQL", 57.4),
      ProgrammingLanguage("Python", 44.1),
      ProgrammingLanguage("Java", 40.2),
      ProgrammingLanguage("Bash/Shell/PowerShell", 33.1),
      ProgrammingLanguage("C#", 31.4),
      ProgrammingLanguage("PHP", 26.2),
      ProgrammingLanguage("Typescript", 25.4),
      ProgrammingLanguage("C++", 23.9),
      ProgrammingLanguage("C", 21.8),
      ProgrammingLanguage("Go", 8.8),
    ];

    var itemList =
        languages.map((lang) {
          return SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, lang);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(lang.name),
                Text(
                  lang.percent.toString(),
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          );
        }).toList();

    showDialog<ProgrammingLanguage>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Select a Language:'),
          children: itemList,
        );
      },
    ).then((language) {
      if (language != null) {
        setState(() {
          selectedLanguage = language;
        });
      }
    });
  }
}

class ProgrammingLanguage {
  String name;
  double percent;

  ProgrammingLanguage(this.name, this.percent);
}
