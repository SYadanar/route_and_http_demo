// https://pub.dev/packages/auto_route

import 'package:auto_route/annotations.dart';
import 'package:route_and_http_demo/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage),
    AutoRoute(page: DetailPage, initial: true),
    AutoRoute(page: ThirdPage),
  ],
)
class $MyAppRouter {}
