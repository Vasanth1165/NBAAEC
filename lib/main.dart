import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:particles_flutter/particles_flutter.dart';

import 'slides.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyCards(),
    );
  }
}

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            elevation: 24,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.deepOrange,
              size: 28,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      curve: Curves.bounceIn,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 300),
                      child: const MySlide(),
                      childCurrent: const MyCards(),
                      type: PageTransitionType.fade));
            }),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: hi / 2,
                width: double.infinity,
                child: Stack(
                  children: [
                    CircularParticle(
                      height: hi / 2,
                      width: wi,
                      particleColor: const Color(0xffF96E07),
                      numberOfParticles: 300,
                      speedOfParticles: 1.5,
                      maxParticleSize: 7,
                      awayRadius: 0,
                      onTapAnimation: false,
                      isRandSize: true,
                      isRandomColor: false,
                      connectDots: false,
                      enableHover: false,
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(50.0),
                        child: ClipRRect(
                          child: Image(
                            image: AssetImage('assets/IMG/A.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: hi / 2,
                width: double.infinity,
                decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 90,
                        child: TextLiquidFill(
                          textAlign: TextAlign.left,
                          boxHeight: 90.0,
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                          boxBackgroundColor: Colors.white,
                          text: 'Aditya',
                          waveColor: const Color(0xffF96E07),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        child: TextLiquidFill(
                          textAlign: TextAlign.center,
                          boxHeight: 90.0,
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                          boxBackgroundColor: Colors.white,
                          text: 'Engineering',
                          waveColor: const Color(0xffF96E07),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        child: TextLiquidFill(
                          textAlign: TextAlign.left,
                          boxHeight: 90.0,
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                          boxBackgroundColor: Colors.white,
                          text: 'College',
                          waveColor: const Color(0xffF96E07),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
