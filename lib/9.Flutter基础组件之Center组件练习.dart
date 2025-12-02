import 'package:flutter/material.dart';

void main() {
  runApp(MyCenterWidgetApp());
}

class MyCenterWidgetApp extends StatelessWidget {
  const MyCenterWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Center示例")),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("居中内容"),
          ),
        ),
      ),
    );
  }
}
