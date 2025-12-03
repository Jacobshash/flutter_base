import 'package:flutter/material.dart';

void main() {
  runApp(MyColumnWidgetApp());
}

class MyColumnWidgetApp extends StatelessWidget {
  const MyColumnWidgetApp({super.key});


  List<Widget> getList(){
   return List.generate(10, (index) {
      return Container(decoration: BoxDecoration(color:Colors.blue),width: 100,height: 100,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.orange),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.spaceAround,
            direction: Axis.horizontal,
            children: getList(),
          ),
        ),
      ),
    );
  }
}
