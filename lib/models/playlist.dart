import 'package:rythem_music/models/song.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imgUrl;

  Playlist({required this.title, required this.songs, required this.imgUrl});
  static List<Playlist> playlists = [
    Playlist(
      title: "Hip Hop",
      songs: Song.songs,
      imgUrl: "assets/images/image10.png",
    ),
    Playlist(
      title: "Rocks & Roll",
      songs: Song.songs,
      imgUrl: "assets/images/image9.png",
    ),
    Playlist(
      title: "Techno",
      songs: Song.songs,
      imgUrl: "assets/images/image8.png",
    ),
  ];
}
