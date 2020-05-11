import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SchoolWebsite extends StatefulWidget {
  @override
  _SchoolWebsiteState createState() => _SchoolWebsiteState();

  final String title;
  SchoolWebsite(this.title);

}

class _SchoolWebsiteState extends State<SchoolWebsite> {

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Website"),
        centerTitle: true,
        backgroundColor: Colors.teal[600],
      ),
      body: WebView(
        initialUrl: "https://www.wgss.ca",
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context, AsyncSnapshot<WebViewController> controller) {
          if (controller.hasData) {
            return FloatingActionButton(                
                child: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  controller.data.goBack();
                },
                backgroundColor: Colors.green,
            );
          }
          return Container();
        },
      ),
    );
  }
}