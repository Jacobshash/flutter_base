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
        appBar: AppBar(
          centerTitle:  true,
          title: Text('Stack Widget'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.orange),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.yellow),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
