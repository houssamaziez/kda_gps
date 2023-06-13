import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Webview Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Start(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebviewScaffold(
        url:
            'https://itc.kdaemballage.com/mobile/index.php',  
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void setState(VoidCallback fn) {
    Timer(Duration(seconds: 5), () {
      Get.off(NewWidget());
    });
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.off(NewWidget());
    });
    return Scaffold(
      body: Center(
        child: Image.asset("images/logo.png"),
      ),
    );
  }
}
