import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:animated_background/animated_background.dart';

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

    ParticleOptions particles = const ParticleOptions(
      baseColor: Color(0xffF96E07),
      spawnOpacity: 0.0,
      opacityChangeRate: 0.25,
      minOpacity: 0.1,
      maxOpacity: 0.4,
      particleCount: 250,
      spawnMaxRadius: 15.0,
      spawnMaxSpeed: 100.0,
      spawnMinSpeed: 30,
      spawnMinRadius: 7.0,
    );

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xffF96E07),
            child: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
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
                child: CircularParticle(
                  height: hi / 2,
                  width: wi,
                  particleColor: const Color(0xffF96E07),
                  numberOfParticles: 200,
                  speedOfParticles: 1.5,
                  maxParticleSize: 7,
                  awayRadius: 0,
                  onTapAnimation: false,
                  isRandSize: true,
                  isRandomColor: false,
                  connectDots: false,
                  enableHover: false,
                ),
                // child: const Center(
                //   child: Padding(
                //     padding: EdgeInsets.all(50.0),
                //     child: ClipRRect(
                //       child: Image(
                //         image: AssetImage('assets/IMG/A.png'),
                //       ),
                //     ),
                //   ),
                // ),
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
