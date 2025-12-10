import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/list',
      routes: {
        '/list': (context) => ItemPage(),
        '/detail': (context) => DetailPage(),
      },
      home: ItemPage(),
    );
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
            onTap: () {
              Navigator.pushNamed(
                context,
                "/detail",
                arguments: {"id": index + 1},
              );
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
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int? id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      if (ModalRoute.of(context) != null) {
        Map<String, dynamic> arguments =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        id = arguments["id"];
        setState(() {
          
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$id Detail Page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/list");
              },
              child: Text('Go to list page'),
            ),
          ],
        ),
      ),
    );
  }
}
