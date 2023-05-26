import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyBio extends StatefulWidget {
  const MyBio(
      {super.key,
      required this.vidPath,
      required this.content,
      required this.inPage});

  final String vidPath;
  final String content;
  final String inPage;

  @override
  State<MyBio> createState() => _MyBioState();
}

class _MyBioState extends State<MyBio> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        widget.vidPath,
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.inPage,style: TextStyle(fontFamily: 'POP'),),
        centerTitle: true,
      ),
      body: Center(
        child: AnimationList(
          duration: 1500,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                widget.inPage,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.content,
                style: const TextStyle(fontSize: 18, fontFamily: 'POP'),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
