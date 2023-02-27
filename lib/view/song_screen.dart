import 'package:flutter/material.dart';
import 'package:rythem_music/widgets/app_background.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text(
            'SongScreen is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
