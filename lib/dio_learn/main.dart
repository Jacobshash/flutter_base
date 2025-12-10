import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/dio_learn/DioUtil.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    _getChannels();
  }

  List<Map<String, dynamic>> _list = [];

  void _getChannels() async {
    DioUtil dioUtil = DioUtil();
    Response<dynamic> response = await dioUtil.get("channels");
    Map<String, dynamic> res = response.data as Map<String, dynamic>;
    _list = (res["data"]["channels"] as List).cast<Map<String, dynamic>>();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter App")),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return ChildStateful(
              item: _list[index],
              delFood: (id) {
                _list.removeWhere((element) => element["id"] == id);
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

  final Map<String,dynamic> item;
  final Function(int index) delFood;

  const ChildStateful({
    super.key,
    required this.item,
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
          child: Text(widget.item["name"], style: TextStyle(color: Colors.white)),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: GestureDetector(
            onTap: () {
              widget.delFood(widget.item["id"]);
            },
            child: SizedBox(
              width: 30,
              height: 30,
              child: Icon(Icons.delete),
            ),
          ),
        )
      ],
    );
  }
}




