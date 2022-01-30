import 'package:flutter/material.dart';
import 'package:web_view/route_manager.dart';
import 'package:web_view/web_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final textController = TextEditingController();

  void onOpenLink() {
    RouteManager.instance.pushNamedWithArguments("/webview", WebViewArguments(websiteUrl: textController.text));
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16, bottom: 16),
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: 'Site link for webview',
                focusColor: Colors.red,
              ),
            ),
          ),
          TextButton(
            onPressed: onOpenLink,
            child: const Text(
              "Open Link",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
