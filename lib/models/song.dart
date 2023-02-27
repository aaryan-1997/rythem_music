class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: 'Glass',
      description: 'Music',
      url: 'assets/musics/music1.mp3',
      coverUrl: 'assets/images/image1.png',
    ),
    Song(
      title: 'Alone',
      description: 'Alone',
      url: 'assets/musics/Alone_-_Color_Out.mp3',
      coverUrl: 'assets/images/image2.png',
    ),
    Song(
      title: 'Around The Corner',
      description: 'Around The Corner_',
      url: 'assets/musics/Around_The_Corner_-_Infraction.mp3',
      coverUrl: 'assets/images/image3.png',
    ),
    Song(
      title: 'Molotov Heart',
      description: 'Molotov Heart',
      url: 'assets/musics/Molotov_Heart_-_radionowhere.mp3',
      coverUrl: 'assets/images/image4.png',
    ),
    Song(
      title: 'Tantalizing Youth',
      description: 'Tantalizing Youth',
      url: 'assets/musics/Tantalizing_Youth_-_Social_Square.mp3',
      coverUrl: 'assets/images/image5.png',
    ),
    Song(
      title: 'The Deep',
      description: 'The Deep',
      url: 'assets/musics/The_Deep_-_Anitek.mp3',
      coverUrl: 'assets/images/image6.png',
    ),
    Song(
      title: 'The Devil Music',
      description: 'The Devil Music',
      url: 'assets/musics/The_Devil_Music_Co._-_Runaway_Mustang.mp3',
      coverUrl: 'assets/images/image7.png',
    ),
  ];
}
