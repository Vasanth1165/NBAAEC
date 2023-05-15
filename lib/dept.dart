import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyDept extends StatelessWidget {
  MyDept({super.key});

  final List<MyDeptPdf> _pdf = [
    MyDeptPdf(imgPath: 'assets/IMG/CIVIL.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/EEE.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/MECH.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/ECE.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/CSE.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/MIN.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/PET.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/AIML.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/IT.jpg', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/AGRI.png', pdfPath: 'assets/PDF/PP.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: AnimationLimiter(
          child: ListView.builder(
            itemCount: _pdf.length,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                child: FlipAnimation(
                  curve: Curves.easeInOutCirc,
                  delay: const Duration(milliseconds: 400),
                  duration: const Duration(milliseconds: 200),
                  child: ScaleAnimation(
                    curve: Curves.easeInCirc,
                    duration: const Duration(milliseconds: 200),
                    delay: const Duration(milliseconds: 200),
                    child: InkWell(
                      child: Container(
                        height: hi / 4,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                                image: AssetImage(_pdf[index].imgPath),
                                fit: BoxFit.fill),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                              )
                            ]),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => _MyPdf(
                                      pdfPath: _pdf[index].pdfPath,
                                    )));
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyDeptPdf {
  MyDeptPdf({
    required this.imgPath,
    required this.pdfPath,
  });
  final String imgPath;
  final String pdfPath;
}

class _MyPdf extends StatelessWidget {
  const _MyPdf({Key? key, required this.pdfPath}) : super(key: key);

  final String pdfPath;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        extendBody: true, body: Center(child: SfPdfViewer.asset(pdfPath)));
    return scaffold;
  }
}
