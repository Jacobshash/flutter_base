import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ParentToChild());
}

class ParentToChild extends StatelessWidget {
  const ParentToChild({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Parent to Child"),
        ),
        body: Column(
          children: [
            Text("Parent"),
            ChildWidget(parentMessage: "Child"),
          ],
        )
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String parentMessage;
  const ChildWidget({super.key,required this.parentMessage});

  @override
  Widget build(BuildContext context) {
    return Text(parentMessage);
  }
}

