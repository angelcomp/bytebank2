import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'database/app_database.dart';
import 'models/contacts.dart';

void main() {
  runApp(ByteBankApp());
  save(Contacts(0, 'alex', 1000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
          accentColor: Colors.green[900],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}
