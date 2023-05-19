import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'bio.dart';

class MyHub extends StatelessWidget {
  const MyHub({super.key});

  @override
  Widget build(BuildContext context) {
    final wi = MediaQuery.of(context).size.width;
    final hi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredGrid(
                columnCount: 2,
                position: index,
                duration: const Duration(milliseconds: 200),
                delay: const Duration(milliseconds: 200),
                child: FadeInAnimation(
                    duration: const Duration(milliseconds: 200),
                    delay: const Duration(milliseconds: 200),
                    child: SlideAnimation(
                      duration: const Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      horizontalOffset: wi / 2,
                      verticalOffset: 100.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyBio(
                                        vidPath: _data[index].vidPath,
                                        content: _data[index].content,
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 50,
                            shadowColor: Colors.black,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: SizedBox(
                              width: wi / 2,
                              height: hi / 4,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image(
                                        image: AssetImage(_data[index].imgPath),
                                        alignment: Alignment.center,
                                        height: hi / 4.5,
                                        width: wi / 1.5,
                                      ),
                                    ),
                                  ],
                                ), //Column
                              ), //Padding
                            ), //SizedBox
                          ),
                        ),
                      ),
                    )),
              );
            }),
      ),
    );
  }
}

List<MyData> _data = [
  MyData(
      imgPath: 'assets/IMG/T.png',
      vidPath: 'assets/VID/TTV.mp4',
      content:
          'Founded back on the 3rd of February 2016, our journey has been quite an adventurously successful one. Over time our team has taken up commercial and social projects and developed apps, games, softwares, websites and a whole lot more. Our experienced developers are certified in an array of languages and can handle anything that comes their way.'),
  MyData(
      imgPath: 'assets/IMG/OC.png',
      vidPath: 'assets/VID/OV.mp4',
      content:
          'Owl coder is an Innovative Training Program of 60 days which enhances trainees on Coding skills like Data Structures and Algorithms, Problem solving skills, Aptitude, Reasoning and Soft skills. This training happens from 4.00p.m to 12.00a.m. Trainees are given awareness on Interview skills and conducted Mock interviews on both Technical and HR rounds. It was proven a successful initiative by our CEO which reflected on the placements of highest packages.'),
  MyData(
      imgPath: 'assets/IMG/PS.png',
      vidPath: 'assets/VID/PSV.mp4',
      content:
          'Project space is a feature rich environment designed to encourage individuals to develop and showcase real-time problems and further find effective solutions that can help overcome them. Every individual who chooses to utilize this space pockets themselves a chance that could possibly get them one step closer to their dream job.'),
  MyData(
      imgPath: 'assets/IMG/TC.png',
      vidPath: 'assets/VID/TV.mp4',
      content:
          'T-Connect is an event that gives freshmen a chance to connect with various emerging technologies. Individuals who choose to attend the program are given the opportunity to explore and experience various emerging technologies like cloud computing, networking, coding, artificial intelligence, augmented reality, virtual reality and robotics. They are briefed about the importance of the technology and the opportunities they bring and are allowed to eventually choose a career path that best suits them.'),
  MyData(
      imgPath: 'assets/IMG/DR.png',
      vidPath: 'assets/VID/DRV.mp4',
      content:
          'Drive Ready is a program designed to help attendees familiarize themselves with a technology and coding language of their choice. This hybrid mode of training ensures that every attendee is ready to ace every interview they attend. The trainings offered in this program are usually job specific and is designed to help the attendee acquire the adequate skills required to efficiently begin their career.'),
  MyData(
      imgPath: 'assets/IMG/CM.png',
      vidPath: 'assets/VID/CV.mp4',
      content:
          'Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive scenario based learning modules are designed to help a student look at a problem in a life like perspective. We strongly believe that every mind isn’t alike, and therefore we give the student a chance to express their opinion rather than trying to abide by a generalized one. The platform also guides students on how they should proceed with their goals and helps them prepare for their dream job in a personalized way.'),
];

class MyData {
  MyData({
    required this.vidPath,
    required this.imgPath,
    required this.content,
  });
  final String vidPath;
  final String imgPath;
  final String content;
}
