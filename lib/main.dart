/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */


import 'package:flutter/material.dart';
import 'package:acecomponents/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}

