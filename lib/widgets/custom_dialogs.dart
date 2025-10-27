import 'package:flutter/material.dart';

void customDialog(BuildContext context, {required String title, required String content}) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: <Widget>[
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, foregroundColor: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Okay'),
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}
