//1.添加material 依赖
import 'package:flutter/material.dart';
import 'package:hook_up_rent/routes.dart';
//2.编写无状态组件
class PageContent extends StatelessWidget{
  final String  name;
  //3.添加name参数
  const PageContent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(title: Text('当前页面：$name'),),
      body: ListView(
        children: <Widget>[
          FilledButton(child: Text(Routes.login),onPressed: (){
            Navigator.pushNamed(context, Routes.login);
          },),
          FilledButton(child: const Text("房屋详情页，id:222"),onPressed: (){
            Navigator.pushNamed(context, 'roomDetail/222');
          },),
          FilledButton(child: const Text("房屋详情页，id:222"),onPressed: (){
            Navigator.pushNamed(context, 'roomDeta');
          },)
        ],

      ),
    );
  }
}

