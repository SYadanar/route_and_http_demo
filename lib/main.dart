// https://github.com/YUCS-Club/http_navigator

import 'package:flutter/material.dart';
import 'package:route_and_http_demo/router/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appRouter = MyAppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
