import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ItemPage());
  }
}

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Page')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: .5,
        ),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(item: "item ${index+1}");
              }));

            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text('Item ${index + 1}')),
            ),
          );
        },
      ),
    );
  }
}



class DetailPage extends StatefulWidget {
  final String item;
  const DetailPage({super.key,required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.item} Detail Page')),
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Go Back')),
      ),
    );
  }
}
