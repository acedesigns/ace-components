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

class RegisterScreen extends StatefulWidget {

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: const Text('Register Screen'),
          backgroundColor: Colors.amber
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Register Screen'),

            ElevatedButton(
                  onPressed: () { context.goNamed(RoutePaths.login.name); },
                  child: const Text('Go Login')
              ),

          ],
        ),
      ),
    );
  }
}
