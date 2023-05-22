//import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyDept extends StatelessWidget {
  MyDept({super.key});

  final List<MyDeptPdf> _pdf = [
    MyDeptPdf(
        imgPath: 'assets/IMG/civiL.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'CIVIL'),
    MyDeptPdf(
      imgPath: 'assets/IMG/EEE.png',
      pdfPath: 'assets/PDF/PP.pdf',
      iBranch: 'EEE',
    ),
    MyDeptPdf(
        imgPath: 'assets/IMG/mechh.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'MECH'),
    MyDeptPdf(
        imgPath: 'assets/IMG/ecee.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'ECE'),
    MyDeptPdf(
        imgPath: 'assets/IMG/CSE.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'CSE'),
    MyDeptPdf(
        imgPath: 'assets/IMG/MIN.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'MIN'),
    MyDeptPdf(
        imgPath: 'assets/IMG/peet.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'PET'),
    MyDeptPdf(
        imgPath: 'assets/IMG/AIML.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'AI/ML'),
    MyDeptPdf(
        imgPath: 'assets/IMG/itt.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'IT'),
    MyDeptPdf(
      imgPath: 'assets/IMG/agrii.png',
      pdfPath: 'assets/PDF/PP.pdf',
      iBranch: 'AGRI',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final hi = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white30),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              itemCount: _pdf.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (context, index) {
                return InkWell(
                  child: Card(
                    elevation: 20,
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
                            builder: (context) => _MyPdf(
                                  pdfPath: _pdf[index].pdfPath,
                                  iBranch: _pdf[index].iBranch,
                                )));
                  },
                );
              }),
        ),
      ),
    );
  }
}

class MyDeptPdf {
  MyDeptPdf(
      {required this.imgPath, required this.pdfPath, required this.iBranch});
  final String imgPath;
  final String pdfPath;
  final String iBranch;
}

class _MyPdf extends StatelessWidget {
  const _MyPdf({Key? key, required this.pdfPath, required this.iBranch})
      : super(key: key);

  final String pdfPath;
  final String iBranch;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: Text(iBranch),
        ),
        body: Center(child: SfPdfViewer.asset(pdfPath)));
    return scaffold;
  }
}
