/* =======================================================
 *
 * Created by anele on 24/09/2024.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';

class AppErrorScreen extends StatefulWidget {

  final String errorMsg;

  const AppErrorScreen({super.key, required this.errorMsg});

  @override
  State<AppErrorScreen> createState() => _AppErrorScreenState();
}

class _AppErrorScreenState extends State<AppErrorScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('App Error Screen', style: TextStyle(fontSize: 22),),
              const SizedBox(height: 20),
              Text(widget.errorMsg),
            ],
          ),
        ),
      ),
    );
  }

}
