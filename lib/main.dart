import 'package:flutter/material.dart';

import 'screens/home_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget App UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(
        title: 'Budget App',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
