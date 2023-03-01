import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rythem_music/route/app_pages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rythem Music',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages:AppPages.routes,
    );
  }
}
