import 'package:flutter/material.dart';

import 'ui/home_screen.dart';

void main() {
  runApp(const ForexApp());
}

class ForexApp extends StatelessWidget {
  const ForexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
