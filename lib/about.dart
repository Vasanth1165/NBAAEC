import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        "assets/VID/video.mp4",
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
                '      Aditya, the premier promoter of quality education in the coastal districts of Andhra Pradesh for the past two decades, leads various institutions ranging from K.G to P.G besides professional colleges like Engineering, Pharmacy and Nursing. Sri Nallamilli Seshareddy as a founder chairman, promoted the educational society in the name and style of Aditya Academy at Kakinada in the year 1984, with a vision and mission to create a platform for holistic growth and success to students at all levels. \n\n       Aditya has made its entry into the educational arena with a public school to meet the needs of primary and secondary education. In succession and with rapid strides, the academy established a number of Junior Colleges, Degree Colleges, PG Colleges, Engineering Colleges, Pharmacy Colleges, Nursing Colleges, Teacher Training Institutions.  \n\n        The silver-jubilee educational group with 50,000+ students in 50+ institutions with 5000+ staff across three districts in Andhra Pradesh has become the standard bearer for quality education. In every stream, Aditya has become a spring-board for success through its powered vision, constant innovation and professional excellence.',
                style: TextStyle(fontSize: 18, fontFamily: 'POP'),
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
