import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ParentToChildStateful());
}


class ParentToChildStateful extends StatefulWidget {
  const ParentToChildStateful({super.key});

  @override
  State<ParentToChildStateful> createState() => _ParentToChildStatefulState();
}

class _ParentToChildStatefulState extends State<ParentToChildStateful> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Parent to Child Stateful"),
        ),
        body: Column(
          children: [
            Text("Parent to Child Stateful"),
            ChildStateful(name: "Child Stateful"),

          ],
        )
      ),
    );
  }
}

class ChildStateful extends StatefulWidget {
  final String name;
  const ChildStateful({super.key,required this.name});

  @override
  State<ChildStateful> createState() => _ChildStatefulState();
}

class _ChildStatefulState extends State<ChildStateful> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.name);
  }
}



