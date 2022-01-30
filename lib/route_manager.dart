import 'package:web_view/main.dart';

class RouteManager {
  static RouteManager? _instance;
  static RouteManager get instance => _instance ??= RouteManager();

  String _currentRoute = '/';
  String get currentRoute => _currentRoute;
  void setCurrentRoute(String routeName) {
    var formattedName = '/${routeName[0].toLowerCase()}${routeName.substring(1)}';
    _currentRoute = formattedName;
  }

  void pushReplacementNamed(String route) {
    navigatorKey.currentState!.pushReplacementNamed(route);
  }

  void pushNamed(String routeName) {
    navigatorKey.currentState!.pushNamed(routeName);
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }

  void pushNamedWithArguments(String routeName, Object arguments) {
    navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }
}
