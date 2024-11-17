//1.添加material 依赖
import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/page_content.dart';

//2.编写无状态组件
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: const Text('登陆'),
      ),
      body: Column(
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: '密码', hintText: '请输入密码'),
          ),
          FilledButton(onPressed: (){

          }, child: const Text('登录')),
          Row(
            //主轴对准  居中
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('还没有账号，'),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, 'register');
            }, child: Text('去注册~'))
          ],)
        ],
      ),
    );
  }
}
