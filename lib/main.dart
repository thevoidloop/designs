import 'package:designs/screens/scroll_design_screen.dart';
import 'package:flutter/material.dart';

import 'package:designs/screens/basic_desing_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll-desing',
      routes: {
        'basic-desing': (_) => const BasicDesignScreen(),
        'scroll-desing': (_) => const ScrollDesignScreen(),
      },
    );
  }
}
