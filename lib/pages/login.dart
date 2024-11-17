//1.添加material 依赖
import 'dart:ffi';

import 'package:flutter/material.dart';

//2.编写无状态组件
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: const Text('登陆'),

        ),
        body: SafeArea(
            minimum: EdgeInsets.all(30),
            child: ListView(
              children: <Widget>[
                const TextField(
                  decoration:
                      InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                      suffixIcon: IconButton(
                        icon: Icon(showPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 5,
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "登录",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  //主轴对准  居中
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('还没有账号，'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          '去注册~',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )
              ],
            )));
  }
}
