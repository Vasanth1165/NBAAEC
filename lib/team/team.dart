import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bubble_lens/bubble_lens.dart';
import 'package:flutter/material.dart';

import 'details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/Team/BABJI.png',
    designation: 'Babji Neelam',
    team: 'CEO',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VEERABABU.png',
    designation: 'Veerababu',
    team: 'Program Manager Operations',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SUDHIR.png',
    designation: 'Sudhir',
    team: 'Program Manager IT',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/KIRAN-KUMAR.png',
    designation: 'Kiran',
    team: 'Program Manager Relationship',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SHAIFU.png',
    designation: 'Shaifu',
    team: 'Program Manager Training',
    title: 'Sudhir',
    details: 'CompTIA IT Fundamentals',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RAJESH-B.png',
    designation: 'Rajesh',
    team: 'Program Manager Placements',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/KIRAN.png',
    designation: 'Kiran',
    team: 'Salseforce Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/krishna.webp',
    designation: 'Krishna',
    team: 'Google Flutter Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ARAVIND.png',
    designation: 'Aravind',
    team: 'AWS Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ARJUN.png',
    designation: 'Krishnarjuna',
    team: 'Graphic Desginer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ASHOK-M.png',
    designation: 'Ashok',
    team: 'Lead Trainer SDE',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ASHOK-SIRIKI.png',
    designation: 'Surya Ashok',
    team: 'DevOps Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BHARATH.png',
    designation: 'Bharathi Kumar',
    team: 'Aptitude Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BHUPATHI.png',
    designation: 'Bhupathi',
    team: 'Network AdminiStrator',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BOBBY-KIRAN.png',
    designation: 'Bobby Kiran',
    team: 'IOT Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BOBBY.png',
    designation: 'Bobby',
    team: 'Dev Ops Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/DIRGA PRASAD.webp',
    designation: 'DURGA PRASAD',
    team: 'Web Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/DIVYA.png',
    designation: 'Divya',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/GANAPATHI.png',
    designation: 'Ganapathi',
    team: 'Technical Tainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/GIRISH.png',
    designation: 'Girish',
    team: 'Web Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/HANUMANTH.webp',
    designation: 'Hanumanth',
    team: 'Coding Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/JDP.png',
    designation: 'Durga Prasad',
    team: 'Web Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/KIJSHORE.webp',
    designation: 'Kishore',
    team: 'Coding Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/LOVA-RAJU.png',
    designation: 'Lova Raju',
    team: 'Support Executive',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/M-RAJESH.png',
    designation: 'Rajesh',
    team: 'Technical Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/MUTYALA-BABU.png',
    designation: 'Mutyala Babu',
    team: 'Pega Trainer',
    title: 'Sudhir',
    details: 'Pega System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NANI.webp',
    designation: 'Nani',
    team: 'Python Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NARASIMHA.png',
    designation: 'Narasimha',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NAVEEN.png',
    designation: 'Naveen',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NDP.png',
    designation: 'N.Durga Prasad',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PAVAN-TEJA.png',
    designation: 'Pavan Teja',
    team: 'Dev Ops Tainer',
    title: 'Sudhir',
    details: 'AWS Certified Solutions',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PAVAN.png',
    designation: 'Pavan',
    team: 'Coding Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PETER.png',
    designation: 'Jonathan Peters',
    team: 'Security Analyst',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PRAKASH.png',
    designation: 'Prakash',
    team: 'IOT Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PRASANTH.png',
    designation: 'Prasanth',
    team: 'AR/VR Developer',
    title: 'Sudhir',
    details:
        '1.Unity Certified User: Artist\n2.Unity Certified user: Programmer\n3.Unity Certified VR Developer',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RAJA-CHOWDARI.png',
    designation: 'Raja Chowdhari',
    team: 'Pega Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RAMBABU.png',
    designation: 'Rambabu',
    team: 'Cloud Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RENUKA.png',
    designation: 'Renuka',
    team: 'Softskills Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAI-KIRAN.png',
    designation: 'Sai Kiran',
    team: '3D Graphics Desginer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAI-KUMAR.png',
    designation: 'Sai Kumar',
    team: 'Support Executive',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAI-TEJA.png',
    designation: 'Sai Teja',
    team: 'Automation Trainer',
    title: 'Sudhir',
    details: 'Autodesk Autocad',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAMULE.png',
    designation: 'Samule',
    team: 'Network Administrator',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SATHISH.png',
    designation: 'Sathish',
    team: 'Web developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SATISH.png',
    designation: 'Satish',
    team: 'Pega Trainer',
    title: 'Sudhir',
    details: 'Pega System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SDP.png',
    designation: 'Durga Prasad',
    team: 'Motion Graphic Desginer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SIDIK.png',
    designation: 'Sidik',
    team: 'Apptitude trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SIMHADRI.png',
    designation: 'Simhadri',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SIVA.png',
    designation: 'Siva',
    team: 'Support Executive',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SUNEEL.png',
    designation: 'Suneel',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SRINU.png',
    designation: 'Srinu',
    team: 'SalseForce Trainer',
    title: 'Sudhir',
    details: 'Salseforce Administrator',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VARDINI.png',
    designation: 'Vardini',
    team: 'Data Analytics Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VASANTH.webp',
    designation: 'Vasanth',
    team: 'Flutter Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VIJAY.png',
    designation: 'Vijay',
    team: 'Dev Ops Trainer',
    title: 'Sudhir',
    details: '',
  ),
];

class ImageDetails {
  final String imagePath;
  final String designation;
  final String team;
  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,
    required this.designation,
    required this.team,
    required this.title,
    required this.details,
  });
}

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: BlurryContainer(
          color: Colors.white,
          child: BubbleLens(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              widgets: [
                for (var i = 0; i < _images.length; i++)
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      child: Image.asset(_images[i].imagePath),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[i].imagePath,
                              title: _images[i].title,
                              team: _images[i].team,
                              designation: _images[i].designation,
                              details: _images[i].details,
                            ),
                          ),
                        );
                      },
                    ),
                    //color: [Colors.red, Colors.green, Colors.blue][i % 3],
                  )
              ]),
        )),
      ),
    );
  }
}
