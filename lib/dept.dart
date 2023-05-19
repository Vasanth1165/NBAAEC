import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyDept extends StatelessWidget {
  MyDept({super.key});

  final List<MyDeptPdf> _pdf = [
    MyDeptPdf(imgPath: 'assets/IMG/CIVIL.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/EEE.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/MECH.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/ECE.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/CSE.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/MIN.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/PET.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/AIML.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/IT.png', pdfPath: 'assets/PDF/PP.pdf'),
    MyDeptPdf(imgPath: 'assets/IMG/AGRI.png', pdfPath: 'assets/PDF/PP.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white30),
      body: Center(
        child: AnimationLimiter(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              itemCount: _pdf.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    height: hi / 3.5,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage(_pdf[index].imgPath),
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                _MyPdf(pdfPath: _pdf[index].pdfPath)));
                  },
                );
              }),
        )),
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
