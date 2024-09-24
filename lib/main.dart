/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:acecomponents/routing/routing.dart';
import 'package:acecomponents/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((dynamic value) => runApp( const MyApp() ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final GoRouter appRouter = appRoutes();

    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: appRouter,
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        useMaterial3: true
      ),
    );
  }
}

