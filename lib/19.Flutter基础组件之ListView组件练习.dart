import 'package:flutter/material.dart';

void main() {
  runApp(MyTextFieldWidgetApp());
}

class MyTextFieldWidgetApp extends StatefulWidget {
  const MyTextFieldWidgetApp({super.key});

  @override
  State<MyTextFieldWidgetApp> createState() => _MyTextFieldWidgetAppState();
}

class _MyTextFieldWidgetAppState extends State<MyTextFieldWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('SingleChildScrollView')),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                color: Colors.yellow,
              ),
              child: Text('第${index + 1}个', style: TextStyle(fontSize: 15)),
            );
          },
        ),
      ),
    );
  }
}
