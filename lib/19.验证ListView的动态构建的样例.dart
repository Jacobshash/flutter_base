import 'package:flutter/material.dart';

void main() {
  runApp(ListViewComparisonApp());
}

class ListViewComparisonApp extends StatelessWidget {
  const ListViewComparisonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView vs ListView.builder 对比',
      home: ListViewComparisonPage(),
    );
  }
}

class ListViewComparisonPage extends StatefulWidget {
  const ListViewComparisonPage({super.key});

  @override
  _ListViewComparisonPageState createState() => _ListViewComparisonPageState();
}

class _ListViewComparisonPageState extends State<ListViewComparisonPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ListView vs ListView.builder'),
          bottom: TabBar(
            tabs: [
              Tab(text: '普通 ListView'),
              Tab(text: 'ListView.builder'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 普通 ListView 示例
            ListViewExample(),
            // ListView.builder 示例
            ListViewBuilderExample(),
          ],
        ),
      ),
    );
  }
}

// 普通 ListView 示例
class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('构建普通 ListView');
    
    // 创建所有 widget（即使不可见）
    List<Widget> items = List.generate(1000, (index) {
      print('构建普通 ListView Item $index'); // 这会打印1000次
      return Container(
        height: 100,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: _getColorForIndex(index),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            '普通 Item $index',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      );
    });

    return ListView(
      children: items,
    );
  }
}

// ListView.builder 示例
class ListViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('构建 ListView.builder');
    
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (BuildContext context, int index) {
        print('构建 ListView.builder Item $index'); // 这只会打印可见的item数量
        
        return Container(
          height: 100,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: _getColorForIndex(index),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Builder Item $index',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

// 根据索引返回不同颜色的辅助函数
Color _getColorForIndex(int index) {
  int remainder = index % 10;
  switch (remainder) {
    case 0:
      return Colors.red;
    case 1:
      return Colors.blue;
    case 2:
      return Colors.green;
    case 3:
      return Colors.orange;
    case 4:
      return Colors.purple;
    case 5:
      return Colors.teal;
    case 6:
      return Colors.pink;
    case 7:
      return Colors.indigo;
    case 8:
      return Colors.amber;
    case 9:
      return Colors.cyan;
    default:
      return Colors.grey;
  }
}