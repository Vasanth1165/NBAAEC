import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:nbaaec/team/team.dart';
import 'package:video_player/video_player.dart';

class MyThub extends StatefulWidget {
  const MyThub({super.key});

  @override
  State<MyThub> createState() => _MyThubState();
}

class _MyThubState extends State<MyThub> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        "assets/VID/TTV.mp4",
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
        title: Text('Technicalhub',style: TextStyle(fontFamily: 'POP'),),
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Technicalhub',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Founded back on the 3rd of February 2016, our journey has been quite an adventurously successful one. Over time our team has taken up commercial and social projects and developed apps, games, softwares, websites and a whole lot more. Our experienced developers are certified in an array of languages and can handle anything that comes their way.',
                style: TextStyle(fontSize: 18, fontFamily: 'POP'),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyTeam()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Team',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
