import 'package:flutter/material.dart';

void main(){
  runApp(MyStateLessApp());
}

class MyStateLessApp extends StatelessWidget {
  const MyStateLessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter基础组件之StatelessWidget",
      theme: ThemeData(scaffoldBackgroundColor: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("头部区域"),
        ),
        body: Center(
          child: Text("中部区域"),
        ),
        bottomNavigationBar: Container(
          height: 80,
          color: Colors.white,
          child: Center(
            child: Text("底部区域"),
          ),
        ),
      ),
    );
  }
}