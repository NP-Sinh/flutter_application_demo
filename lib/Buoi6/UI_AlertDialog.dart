import 'package:flutter/material.dart';

class UIAlertDialog extends StatelessWidget {
  const UIAlertDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1050080155 - Nguyễn Phương Sinh (AlertDialog)'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert Dialog'),
          onPressed: () {
            openMyAlertDialog(context);
          },
        ),
      ),
    );
  }
}

void openMyAlertDialog(BuildContext context) {
  showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Confirm"),
        content: const Text("Are you sure to remove this item?"),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        actions: [
          ElevatedButton(
            child: const Text("Yes Delete"),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          ElevatedButton(
            child: const Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  ).then((value) {
    if (value != null) {
      print("Return value: $value");
    } else {
      print("Dialog dismissed without selection.");
    }
  });
}
