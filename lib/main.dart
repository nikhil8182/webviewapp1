import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(

          child: WebView(
            initialUrl:'http://www.opendisrupt.in/',
            javascriptMode: JavascriptMode.unrestricted,
           onWebViewCreated: (WebViewController webViewController ) {
              _controller = webViewController;}
          ),
        ),
      ),
    );
  }
}

