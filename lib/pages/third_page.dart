import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_and_http_demo/router/router.gr.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Home Page"),
          onPressed: () {
            // Go Back to Home Page
            AutoRouter.of(context).pop(HomeRoute());
          },
        ),
      ),
    );
  }
}
