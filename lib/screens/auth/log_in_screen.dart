/* =======================================================
 *
 * Created by anele on 24/09/2024.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:acecomponents/routing/routing.dart';

class LogInScreen extends StatefulWidget {

  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LogIn Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('LogIn Screen'),

            ElevatedButton(
                onPressed: () { context.goNamed(RoutePaths.register.name); },
                child: const Text('Go Register')
            ),

          ],
        ),
      ),
    );
  }
}
