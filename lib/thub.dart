import 'package:flutter/material.dart';
import 'package:nbaaec/HUB.dart';

import 'bio.dart';

class MyHub extends StatelessWidget {
  const MyHub({super.key});

  @override
  Widget build(BuildContext context) {
    final wi = MediaQuery.of(context).size.width;
    final hi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Center(
            child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyThub()));
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.black,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                width: wi / 1,
                height: hi / 4,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/IMG/T.png'),
                    ),
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ),
        )),
        Expanded(
          child: GridView.builder(
              itemCount: _data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBio(
                                  vidPath: _data[index].vidPath,
                                  content: _data[index].content,
                                  inPage: _data[index].inPage,
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
                          child: Center(
                            child: Image(
                              image: AssetImage(_data[index].imgPath),
                            ),
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}

List<MyData> _data = [
  MyData(
      imgPath: 'assets/IMG/OC.png',
      vidPath: 'assets/VID/OV.mp4',
      inPage: 'Owl Coder',
      content:
          'Owl coder is an Innovative Training Program of 60 days which enhances trainees on Coding skills like Data Structures and Algorithms, Problem solving skills, Aptitude, Reasoning and Soft skills. This training happens from 4.00p.m to 12.00a.m. Trainees are given awareness on Interview skills and conducted Mock interviews on both Technical and HR rounds. It was proven a successful initiative by our CEO which reflected on the placements of highest packages.'),
  MyData(
      imgPath: 'assets/IMG/PS.png',
      vidPath: 'assets/VID/PSV.mp4',
      inPage: 'Project Space',
      content:
          'Project space is a feature rich environment designed to encourage individuals to develop and showcase real-time problems and further find effective solutions that can help overcome them. Every individual who chooses to utilize this space pockets themselves a chance that could possibly get them one step closer to their dream job.'),
  MyData(
      imgPath: 'assets/IMG/TC.png',
      vidPath: 'assets/VID/TV.mp4',
      inPage: 'T-Connect',
      content:
          'T-Connect is an event that gives freshmen a chance to connect with various emerging technologies. Individuals who choose to attend the program are given the opportunity to explore and experience various emerging technologies like cloud computing, networking, coding, artificial intelligence, augmented reality, virtual reality and robotics. They are briefed about the importance of the technology and the opportunities they bring and are allowed to eventually choose a career path that best suits them.'),
  MyData(
      imgPath: 'assets/IMG/DR.png',
      vidPath: 'assets/VID/DRV.mp4',
      inPage: 'DriveReady',
      content:
          'Drive Ready is a program designed to help attendees familiarize themselves with a technology and coding language of their choice. This hybrid mode of training ensures that every attendee is ready to ace every interview they attend. The trainings offered in this program are usually job specific and is designed to help the attendee acquire the adequate skills required to efficiently begin their career.'),
  MyData(
      imgPath: 'assets/IMG/CM.png',
      vidPath: 'assets/VID/CV.mp4',
      inPage: 'Codemind',
      content:
          'Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive scenario based learning modules are designed to help a student look at a problem in a life like perspective. We strongly believe that every mind isn’t alike, and therefore we give the student a chance to express their opinion rather than trying to abide by a generalized one. The platform also guides students on how they should proceed with their goals and helps them prepare for their dream job in a personalized way.'),
];

class MyData {
  MyData(
      {required this.vidPath,
      required this.imgPath,
      required this.content,
      required this.inPage});
  final String vidPath;
  final String imgPath;
  final String content;
  final String inPage;
}
