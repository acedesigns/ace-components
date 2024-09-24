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
import 'package:acecomponents/screens/screens.dart';


GoRouter appRoutes() {

  final GlobalKey<NavigatorState> rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'root');

    return GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: rootNavigator,
      routes: <RouteBase>[
          GoRoute(
            path: RoutePaths.root.path,
            name: RoutePaths.root.name,
            builder: (BuildContext context, GoRouterState state) => const WelcomeScreen(),
            routes: <RouteBase>[
              GoRoute(
                path: RoutePaths.login.path,
                name: RoutePaths.login.name,
                builder: (BuildContext context, GoRouterState state) => const LogInScreen(),
              ),
              GoRoute(
                path: RoutePaths.register.path,
                name: RoutePaths.register.name,
                builder: (BuildContext context, GoRouterState state) => const RegisterScreen(),
              ),
            ]
          ),

        ],
      errorBuilder: (BuildContext context, GoRouterState state) {
        return AppErrorScreen(
          errorMsg: state.error.toString(),
          key: state.pageKey,
        );
      },
    );
}

