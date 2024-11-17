//1.添加material 依赖
import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/page_content.dart';

//2.编写无状态组件
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: const PageContent(name: '首页'),
    );
  }
}