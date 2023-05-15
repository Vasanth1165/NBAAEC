import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'dept.dart';
import 'princi.dart';
import 'tp.dart';

class MySlide extends StatefulWidget {
  const MySlide({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MySlideState createState() => _MySlideState();
}

class _MySlideState extends State<MySlide> {
  final CarouselController _carouselController = CarouselController();

  final List<dynamic> _products = [
    {
      'title': 'About',
      'image': 'assets/IMG/AEI.jpg',
      'description':
          'The 200 acres huge lush green campus and an eco friendly area is situated at surampalem',
      'class': const About(),
    },
    {
      'title': 'Principal Presentation',
      'image': 'assets/IMG/AEI.jpg',
      'description': 'Principal PPT Presentation',
      'class': const MyPdf()
    },
    {
      'title': 'Departments',
      'image': 'assets/IMG/AEI.jpg',
      'description':
          'Implementation of various courses in the campus help students choose different carieer paths',
      'class': MyDept()
    },
    {
      'title': 'Training & Placement',
      'image': 'assets/IMG/AEI.jpg',
      'description':
          'The effective training programs and the multiple company visits happen through Technical hub and Ajivika',
      'class': const MyTpo()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height / 1.3,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              pageSnapping: true,
              onPageChanged: (index, reason) {
                setState(() {});
              }),
          items: _products.map((movie) {
            return Builder(
              builder: (BuildContext context) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      tileMode: TileMode.clamp,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.shade100,
                        Colors.transparent,
                      ],
                      stops: const [
                        0.3,
                        1,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 320,
                          margin: const EdgeInsets.only(top: 10),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(movie['image'], fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  movie['title'],
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: Text(
                                  movie['description'],
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => movie['class']),
                                  ),
                                );
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Read More',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.play_arrow_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

var submitTextStyle = const TextStyle(
  fontSize: 15,
  color: Colors.white,
  fontWeight: FontWeight.w300,
);
