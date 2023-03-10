import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rythem_music/route/app_pages.dart';

import '../models/song.dart';

class SongCard extends StatelessWidget {
  const SongCard({Key? key, required this.song}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.songPage, arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: Get.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(song.coverUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 50,
              width: Get.width * 0.37,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              song.title,
                              maxLines: 1,
                              style:
                                  Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              song.description,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.deepPurple.shade300),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.play_circle,
                      color: Colors.deepPurple,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
