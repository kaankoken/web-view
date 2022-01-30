import 'package:flutter/widgets.dart';
import 'package:web_view/fade_in_route.dart';
import 'package:web_view/home.dart';
import 'package:web_view/web_view.dart';

class Routes {
  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FadeInRoute(screen: const Home());
      case '/webview':
        return FadeInRoute(screen: WebViewExample(args: settings.arguments as WebViewArguments));
    }
  }
}
