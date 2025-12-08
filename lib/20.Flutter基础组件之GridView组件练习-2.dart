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
        body: GridView.extent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2,
          padding: EdgeInsets.all(10),
          children: List.generate(100, (index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                '第${index + 1}个',
                style: TextStyle(color: Colors.white),
              ),
            );
          }),
        ),
      ),
    );
  }
}
