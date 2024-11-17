import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          children: <Widget>[
            Text("404"),
            Text('你访问的资源页面不存在'),
          ],
        ),
      ),
    );
  }
}
