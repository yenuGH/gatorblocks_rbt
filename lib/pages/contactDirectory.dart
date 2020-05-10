import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactDirectory extends StatefulWidget {
  @override
  _ContactDirectoryState createState() => _ContactDirectoryState();
}

class _ContactDirectoryState extends State<ContactDirectory> {

    final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staff Contact Directory"),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "http://wgss.ca/staff-connection/staff-directory-sites/",
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
            );
          }
          return Container();
        },
      ),
    );
  }
}