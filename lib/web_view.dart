import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: true,
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://fisheryapp.ru',
        ),
      ),
    );
  }
}
