/* =======================================================
 *
 * Created by anele on 24/09/2024.
 *
 * @anele_ace
 *
 * =======================================================
 */

enum RoutePaths {
  root(path: '/'),
  login(path: 'login'),
  welcome(path: 'welcome'),
  register(path: 'register'),
  dashboard(path: 'dashboard');

  final String path;
  const RoutePaths({required this.path});
}
