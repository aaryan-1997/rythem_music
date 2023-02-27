import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rythem_music/view/home_screen.dart';
import 'package:rythem_music/view/playlist_screen.dart';
import 'package:rythem_music/view/song_screen.dart';

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
      title: 'Music App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      getPages: [
        GetPage(name: "/", page: ()=>const HomeScreen()),
        GetPage(name: "/song", page: ()=>const SongScreen()),
        GetPage(name: "/playlist", page: ()=>const PlaylistScreen()),
      ],
    );
  }
}