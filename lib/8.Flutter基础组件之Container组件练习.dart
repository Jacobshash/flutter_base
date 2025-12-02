import 'package:flutter/material.dart';

void main() {
  runApp(MyContainerWidget());
}

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          transform: Matrix4.rotationZ(0.06),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.orange, width: 5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
