import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/home/index.dart';
import 'package:hook_up_rent/pages/login.dart';
import 'package:hook_up_rent/routes.dart';

class Application extends StatelessWidget{
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    FluroRouter router=FluroRouter();
    Routes.configureRoutes(router);
    // TODO: implement build
    return  MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.green)),
        onGenerateRoute: router.generator,
    );
  }
}

