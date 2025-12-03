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

  TextEditingController _accountController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('登录')),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: _accountController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(25),
                  hintText: '请输入用户名',
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _pwdController,
                decoration: InputDecoration(
                contentPadding: EdgeInsets.all(25),
                hintText: '请输入密码',
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,borderRadius: BorderRadius.circular(25)
                ),
              ),
              obscureText:  true,),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(onPressed: (){
                  print("用户名：${_accountController.text}");
                  print("密码：${_pwdController.text}");
                }, child: Text("登录",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
