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


class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome Screen'),

            ElevatedButton(
                onPressed: () { context.goNamed(RoutePaths.register.name); },
                child: const Text('Go Register')
            )
          ],
        ),
      ),
    );
  }
}
