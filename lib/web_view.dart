import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewState();
}

class _WebViewState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: true,
        child: WebviewScaffold(
          url: 'https://fisheryapp.ru',
          withJavascript: true,
        ),
        // WebView(
        //   javascriptMode: JavascriptMode.unrestricted,
        //   initialUrl: 'https://fisheryapp.ru',
        // ),
      ),
    );
  }
}
