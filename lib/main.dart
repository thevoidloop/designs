import 'package:designs/screens/home_screen.dart';
import 'package:designs/screens/scroll_design_screen.dart';
import 'package:flutter/material.dart';

import 'package:designs/screens/basic_desing_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home-desing',
      theme: ThemeData.dark(),
      routes: {
        'basic-desing': (_) => const BasicDesignScreen(),
        'scroll-desing': (_) => const ScrollDesignScreen(),
        'home-desing': (_) => const HomeScreen(),
      },
    );
  }
}
