import 'package:flutter/material.dart';

void main() {
  runApp(MyTextFieldWidgetApp());
}

class MyTextFieldWidgetApp extends StatefulWidget {
  const MyTextFieldWidgetApp({super.key});

  @override
  State<MyTextFieldWidgetApp> createState() => _MyTextFieldWidgetAppState();
}

class _MyTextFieldWidgetAppState extends State<MyTextFieldWidgetApp> {
  PageController _controller = PageController();
  int _active = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('SingleChildScrollView')),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    height: 300,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text('第${index + 1}个'),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 40,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(10, (index) {
                          return GestureDetector(
                            onTap: () {
                              _controller.animateToPage(
                                index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                              _active = index;
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color:
                                    _active == index
                                        ? Colors.red
                                        : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverPersistentHeader(delegate: _StickyCategory(), pinned: true),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    '第${index + 1}个',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
              itemCount: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class _StickyCategory extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            width: 100,
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              '第${index + 1}个',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 60;

  @override
  // TODO: implement minExtent
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
