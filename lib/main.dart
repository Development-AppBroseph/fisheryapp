import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'FiheryApp',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  if (Platform.isAndroid) WebView.platform = AndroidWebView();

  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FisheryApp',
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            bottom: true,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://fisheryapp.ru',
            ),
          ),
        ),
      ),
  );
}

