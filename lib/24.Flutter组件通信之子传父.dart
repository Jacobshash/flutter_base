import 'package:flutter/material.dart';

void main() {
  runApp(ParentToChildStateful());
}

class ParentToChildStateful extends StatefulWidget {
  const ParentToChildStateful({super.key});

  @override
  State<ParentToChildStateful> createState() => _ParentToChildStatefulState();
}

class _ParentToChildStatefulState extends State<ParentToChildStateful> {
  final List<String> _list = [
    "鱼香肉丝",
    "宫保鸡丁",
    "西红柿鸡蛋",
    "烤牛排",
    "熘肉片",
    "清炒时蔬",
    "牛柳",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Parent to Child Stateful")),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return ChildStateful(
              name: _list[index],
              index: index,
              delFood: (index) {
                _list.removeAt(index);
                setState(() {});
              },
            );
          },
        ),
      ),
    );
  }
}

class ChildStateful extends StatefulWidget {
  final String name;
  final int index;
  final Function(int index) delFood;

  const ChildStateful({
    super.key,
    required this.name,
    required this.index,
    required this.delFood,
  });

  @override
  State<ChildStateful> createState() => _ChildStatefulState();
}

class _ChildStatefulState extends State<ChildStateful> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(widget.name, style: TextStyle(color: Colors.white)),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              widget.delFood(widget.index);
            });
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
