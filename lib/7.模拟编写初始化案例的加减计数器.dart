import 'package:flutter/material.dart';

void main() {
  runApp(MyCounterWidget());
}

class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key});

  @override
  State<MyCounterWidget> createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle:  true,
          title: Text("Counter App"),
        ),
        body: Center(
          child: Text(count.toString()),
        ),
        // 将加减按钮水平对称排列
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                count--;
                setState(() {});
              },
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                count++;
                setState(() {});
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}