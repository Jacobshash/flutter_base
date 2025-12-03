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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.orange),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
