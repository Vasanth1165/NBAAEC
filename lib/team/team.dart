import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bubble_lens/bubble_lens.dart';
import 'package:flutter/material.dart';

import 'details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/Team/BABJI.png',
    designation: 'Babji Neelam',
    team: 'Founder & CEO',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VEERABABU.png',
    designation: 'Veerababu',
    team: 'Program Manager Operations',
    title: 'T-HUB',
    details: '1. Red Hat Certified System Administrator',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SUDHIR.png',
    designation: 'Sudhir',
    team: 'Program Manager IT',
    title: 'T-HUB',
    details: '1. MTA Python',
  ),
  ImageDetails(
    imagePath: 'assets/Team/KIRAN-KUMAR.png',
    designation: 'Kiran Kumar',
    team: 'Program Manager Relationship',
    title: 'T-HUB',
    details:
        '1. Cambridge English: Advanced\n2. Scottish Qualifications Authority',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SHAIFU.png',
    designation: 'Shaifu',
    team: 'Program Manager Training',
    title: 'T-HUB',
    details: '1. CompTIA IT Fundamentals',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RAJESH-B.png',
    designation: 'Rajesh',
    team: 'Program Manager Placements',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/KIRAN.png',
    designation: 'Kiran',
    team: 'Digital Marketing Lead',
    title: 'T-HUB',
    details: '1. Salesforce Certified Administrator',
  ),
  ImageDetails(
    imagePath: 'assets/Team/krishna.webp',
    designation: 'Krishna',
    team: 'App Developer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ARAVIND.png',
    designation: 'Aravind',
    team: 'AWS Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ARJUN.png',
    designation: 'Krishnarjuna',
    team: 'Graphic Desginer',
    title: 'T-HUB',
    details: '1. Adobe Certified Professional',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ASHOK-M.png',
    designation: 'Ashok',
    team: 'Lead Trainer SDE',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/ASHOK-SIRIKI.png',
    designation: 'Surya Ashok',
    team: 'DevOps Trainer',
    title: 'T-HUB',
    details:
        '1. Cisco Certified Network Associate\n 2. CompTIA IT Fundamentals',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BHARATH.png',
    designation: 'Bharathi Kumar',
    team: 'Aptitude Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BHUPATHI.png',
    designation: 'Bhupathi',
    team: 'Server AdminiStrator',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BOBBY-KIRAN.png',
    designation: 'Bobby Kiran',
    team: 'IOT Trainer',
    title: 'T-HUB',
    details: '1. Arduino Certification',
  ),
  ImageDetails(
    imagePath: 'assets/Team/BOBBY.png',
    designation: 'Bobby',
    team: 'DevOps Trainer',
    title: 'T-HUB',
    details:
        '1. Cisco Certified Network Associate\n2. Microsoft Azure Fundamentals',
  ),
  ImageDetails(
    imagePath: 'assets/Team/DIRGA PRASAD.webp',
    designation: 'Durga Sai Prasad',
    team: 'Web Developer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/DIVYA.png',
    designation: 'Divya',
    team: 'Full Stack Developer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/GANAPATHI.png',
    designation: 'Ganapathi',
    team: 'Technical Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/GIRISH.png',
    designation: 'Girish',
    team: 'Web Developer',
    title: 'T-HUB',
    details: '1. Pega Certified System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/HANUMANTH.webp',
    designation: 'Hanumanth',
    team: 'Coding Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/JDP.png',
    designation: 'Durga Prasad',
    team: 'Web Developer',
    title: 'T-HUB',
    details:
        '1. AWS Certified Cloud Practitioner\n2. Microsoft Azure Fundamentals\n3. MTA HTML\n 4. IT specilist HTML&CSS\n5. IT specilist javascrpit',
  ),
  ImageDetails(
    imagePath: 'assets/Team/KIJSHORE.webp',
    designation: 'Kishore',
    team: 'Cloud Trainer',
    title: 'T-HUB',
    details:
        '1. Associate Cloud Engineer\n2. Microsoft 365 Fundamentals\n3. IT Specialist Python',
  ),
  ImageDetails(
    imagePath: 'assets/Team/LOVA-RAJU.png',
    designation: 'Lova Raju',
    team: 'Support Executive',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/M-RAJESH.png',
    designation: 'Rajesh',
    team: 'Technical Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/MUTYALA-BABU.png',
    designation: 'Mutyala Babu',
    team: 'Pega Trainer',
    title: 'T-HUB',
    details: '1. Pega Certified System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NANI.webp',
    designation: 'Nani',
    team: 'Python Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NARASIMHA.png',
    designation: 'Narasimha',
    team: 'Full Stack Developer',
    title: 'T-HUB',
    details: '1. MTA javascript\n2. MTA HTML',
  ),
  ImageDetails(
    imagePath: 'assets/Team/NDP.png',
    designation: 'N.Durga Prasad',
    team: 'Full Stack Developer',
    title: 'T-HUB',
    details: '1. IT specilist HTML&CSS\n2. IT specilist javascrpit',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PAVAN-TEJA.png',
    designation: 'Pavan Teja',
    team: 'DevOps Tainer',
    title: 'T-HUB',
    details: '1. AWS Certified Solutions',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PAVAN.png',
    designation: 'Pavan',
    team: 'Coding Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PETER.png',
    designation: 'Jonathan Peters',
    team: 'Security Analyst',
    title: 'T-HUB',
    details:
        '1. Automation anywhere\n2. Comptia security+\n3. Automation Anywhere Certified Advanced RPA Professional',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PRAKASH.png',
    designation: 'Prakash',
    team: 'IOT Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/PRASANTH.png',
    designation: 'Prasanth',
    team: 'AR/VR Developer',
    title: 'T-HUB',
    details:
        '1. Unity Certified User: Artist\n2. Unity Certified user: Programmer\n3. Unity Certified VR Developer',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RAJA-CHOWDARI.png',
    designation: 'Raja Chowdhari',
    team: 'Pega Trainer',
    title: 'T-HUB',
    details: '1. Pega Certified System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RAMBABU.png',
    designation: 'Rambabu',
    team: 'Cloud Trainer',
    title: 'T-HUB',
    details: '1. Pega Certified System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/RENUKA.png',
    designation: 'Renuka',
    team: 'Soft Skills Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAI-KIRAN.png',
    designation: 'Sai Kiran',
    team: '3D Graphics Desginer',
    title: 'T-HUB',
    details: '1. Adobe Certified Professional',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAI-KUMAR.png',
    designation: 'Sai Kumar',
    team: 'Support Executive',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAI-TEJA.png',
    designation: 'Sai Teja',
    team: 'Automation Trainer',
    title: 'T-HUB',
    details: '1. Automation Anywhere Certified Advanced RPA Professional',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SAMULE.png',
    designation: 'Samuel',
    team: 'Network Administrator',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SATHISH.png',
    designation: 'Sathish',
    team: 'Web developer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SATISH.png',
    designation: 'Satish',
    team: 'Pega Trainer',
    title: 'T-HUB',
    details: '1. Certified System Architect',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SDP.png',
    designation: 'Durga Prasad',
    team: 'Motion Graphic Desginer',
    title: 'T-HUB',
    details: '1. Adobe Certified Professional',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SIDIK.png',
    designation: 'Sidik',
    team: 'Apptitude trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SIMHADRI.png',
    designation: 'Simhadri',
    team: 'Full Stack Developer',
    title: 'T-HUB',
    details: '1. IT specilist HTML&CSS\n2. IT specilist javascrpit',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SIVA.png',
    designation: 'Siva',
    team: 'Support Executive',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SUNEEL.png',
    designation: 'Suneel',
    team: 'Full Stack Developer',
    title: 'T-HUB',
    details: '1. MTA java script\n2. MTA HTML',
  ),
  ImageDetails(
    imagePath: 'assets/Team/SRINU.png',
    designation: 'Srinu',
    team: 'SalseForce Trainer',
    title: 'T-HUB',
    details: '1. Salseforce Administrator',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VARDINI.png',
    designation: 'Vardini',
    team: 'Data Analytics Trainer',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VASANTH.webp',
    designation: 'Vasanth',
    team: 'App Developer',
    title: 'T-HUB',
    details: '1. MTA Python',
  ),
  ImageDetails(
    imagePath: 'assets/Team/VIJAY.png',
    designation: 'Vijay',
    team: 'DevOps Trainer',
    title: 'T-HUB',
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
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Technicalhub Team',style: TextStyle(fontFamily: 'POP'),),
        centerTitle: true,
        ),
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
