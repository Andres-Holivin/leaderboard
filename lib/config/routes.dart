import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:leaderboard/pages/home/home.dart';
import 'package:leaderboard/pages/test.dart';

class Routes {
  static const String home = '/';
  static const String test = '/test';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        print("ROUTE WAS NOT FOUND !!!");
        return;
      },
    );
    router.define(
      home,
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const HomePage(),
      ),
    );
    router.define(
      test,
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                TestPage(),
      ),
    );
  }
}
