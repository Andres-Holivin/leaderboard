import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/config/dependencies.dart';
import 'package:leaderboard/config/routes.dart';
import 'package:leaderboard/config/theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await setupDependencies();
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    Routes.configureRoutes(getIt<FluroRouter>());
  }

  @override
  Widget build(BuildContext context) {
    final router = getIt<FluroRouter>();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      ensureScreenSize: true,

      builder: (context, child) {
        return MaterialApp(
          onGenerateRoute: router.generator,
          debugShowCheckedModeBanner: false,
          key: key,
          theme: themeData(),
          initialRoute: Routes.home,
        );
      },
    );
  }
}
