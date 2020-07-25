import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    final _url = data["appUrl"];
    return SafeArea(
      child: WebviewScaffold(
        url: _url.toString(),
        withZoom: true,
        withLocalStorage: true,
        withJavascript: true,
        hidden: true,
        initialChild: Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              'assets/loading.gif',
              height: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}
