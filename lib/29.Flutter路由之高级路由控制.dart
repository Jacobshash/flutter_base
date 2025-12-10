import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/goodsList",
      routes: {"/goodsList": (context) => GoodsList()},
      onGenerateRoute: (settings) {
        if (settings.name == "/cartsList") {
          bool isLogin = true;
          if (isLogin) {
            return MaterialPageRoute(builder: (context) => CartsList());
          } else {
            return MaterialPageRoute(builder: (context) => LoginPage());
          }
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => UnknownPage());
      },
      home: GoodsList(),
    );
  }
}

class GoodsList extends StatefulWidget {
  const GoodsList({super.key});

  @override
  State<GoodsList> createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表')),
      body: Center(child: TextButton(onPressed: () {
        Navigator.pushNamed(context, "/cartsList");
      }, child: Text('去购物车列表'))),
    );
  }
}

class CartsList extends StatefulWidget {
  const CartsList({super.key});

  @override
  State<CartsList> createState() => _CartsListState();
}

class _CartsListState extends State<CartsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('购物车列表')),
      body: Column(
        children: [
          Center(child: TextButton(onPressed: () {}, child: Text('去支付'))),
          Center(child: TextButton(onPressed: () {
            Navigator.pushNamed(context, "routeName");
          }, child: Text('去404'))),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录页面')),
      body: Center(child: TextButton(onPressed: () {}, child: Text('去登录'))),
    );
  }
}


class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('404'),
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('返回上一级'))
        ],
      ),
    );
  }
}
