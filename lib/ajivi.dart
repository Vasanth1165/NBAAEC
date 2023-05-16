import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:animation_list/animation_list.dart';

class MyAjvi extends StatefulWidget {
  const MyAjvi({super.key});

  @override
  State<MyAjvi> createState() => _MyAjviState();
}

class _MyAjviState extends State<MyAjvi> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        "assets/VID/AV.mp4",
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
      extendBody: true,
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'At Aditya, we believe employability is more than a skill; it is an attitude, it is a practice. So, we instill this attitude through continuous training in learning skills, behavioral skills, life skills in addition to aptitude and communication skills.And this training starts in the first year of engineering itself. Specific Campus Recruitment Training programs are conducted in the third year, with an emphasis on problem solving, critical thinking, communication skills and team work.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
                child: Text(
              'Our Recruiters',
              style: TextStyle(fontSize: 32, color: Color(0xffF96E07)),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.white,
                child: const Image(image: AssetImage('assets/IMG/PM.png')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
