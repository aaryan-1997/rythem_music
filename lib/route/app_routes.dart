part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();
  static const mainPage = _Paths.mainPage;
  static const homePage = _Paths.homePage;
  static const playlistPage = _Paths.playlistPage;
  static const songPage = _Paths.songPage;
}

abstract class _Paths {
  _Paths._();
  static const mainPage = '/mainPage';
  static const homePage = '/homePage';
  static const playlistPage = '/playlistPage';
  static const songPage = '/songPage';
}
