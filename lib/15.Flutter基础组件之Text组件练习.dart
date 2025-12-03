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
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Text(
                "Hello Flutter!",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.green,
                ),
              ),
              Text(
                "Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.green,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text.rich(TextSpan(
                text: "Hello ",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                ),
                children: [
                  TextSpan(text: " Flutter!", style: TextStyle(color: Colors.red)),
                  TextSpan(text: "!", style: TextStyle(color: Colors.blue)),
                ]
              ))
            ],
          )
        ),
      ),
    );
  }
}
