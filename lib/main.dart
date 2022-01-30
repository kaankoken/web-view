import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_view/home.dart';
import 'package:web_view/route_manager.dart';
import 'package:web_view/routes.dart';
import 'package:web_view/web_view.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final RouteManager routeManager = RouteManager.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        dividerColor: Colors.white24,
        fontFamily: 'PhantomSans',
        unselectedWidgetColor: Colors.white,
      ),
      onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
      navigatorKey: navigatorKey,
      home: const Home(),
    );
  }
}
