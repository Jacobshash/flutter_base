import 'package:flutter/material.dart';

void main() {
  runApp(MyColumnWidgetApp());
}

class MyColumnWidgetApp extends StatelessWidget {
  const MyColumnWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Column Widget")),
        body: Container(
          decoration: BoxDecoration(color: Colors.orange),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 1,
                child: Container(height: 100, color: Colors.blue),
              ),
              Expanded(
                flex: 5,
                child: Container(height: 100, color: Colors.blueGrey),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
