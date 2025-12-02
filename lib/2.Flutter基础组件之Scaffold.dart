import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter组件初体验之App框架",
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: Text("appBar头部区域"),
        ),
        body: Center(child: Text("body中部区域")),
        bottomNavigationBar: Container(
          color: Colors.pink,
          height: 80,
          child: Center(child: Text("bottomNavigationBar底部区域")),
        ),
      ),
    ),
  );
}
