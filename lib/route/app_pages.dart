import 'package:get/get.dart';
import 'package:rythem_music/view/home_screen.dart';
import 'package:rythem_music/view/playlist_screen.dart';
import 'package:rythem_music/view/song_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = AppRoutes.homePage;

  static final routes = [
   
    GetPage(
      name: _Paths.homePage,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: _Paths.playlistPage,
      page: () => const PlaylistScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _Paths.songPage,
      page: () => const SongScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
