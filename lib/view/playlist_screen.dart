import 'package:flutter/material.dart';

import '../models/playlist.dart';
import '../models/song.dart';
import '../widgets/app_background.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    Playlist playlist = Playlist.playlists[0];
    return AppBackground(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Playlist"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                PlaylistInformation(playlist: playlist),
                const SizedBox(height: 30),
                const PlayOrShuffleSwitcher(),
                PlaylistSongs(playlist: playlist)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlaylistSongs extends StatelessWidget {
  const PlaylistSongs({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: playlist.songs.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            "${index + 1}",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          title: Text(
            playlist.songs[index].title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            playlist.songs[index].title,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 24,
          ),
        );
      },
    );
  }
}

class PlayOrShuffleSwitcher extends StatefulWidget {
  const PlayOrShuffleSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayOrShuffleSwitcher> createState() => _PlayOrShuffleSwitcherState();
}

class _PlayOrShuffleSwitcherState extends State<PlayOrShuffleSwitcher> {
  bool isPlay = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: isPlay ? 0 : width * 0.45,
              child: Container(
                height: 50,
                width: width / 2 - 10,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade400,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Play",
                          style: TextStyle(
                            color: isPlay ? Colors.white : Colors.deepPurple,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.play_circle,
                        color: isPlay ? Colors.white : Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Shuffle",
                          style: TextStyle(
                            color: isPlay ? Colors.deepPurple : Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.shuffle,
                        color: isPlay ? Colors.deepPurple : Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistInformation extends StatelessWidget {
  const PlaylistInformation({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            playlist.imgUrl,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          playlist.title,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
