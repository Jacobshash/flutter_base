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
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.orange),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 5,
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),
              Expanded(
                flex: 1,
                child: Container(width: 100, height: 100, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
