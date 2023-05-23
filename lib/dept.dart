//import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class MyDept extends StatelessWidget {
  MyDept({super.key});

  final List<MyDeptPdf> _pdf = [
    MyDeptPdf(
        imgPath: 'assets/IMG/civiL.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Civil'),
    MyDeptPdf(
      imgPath: 'assets/IMG/EEE.png',
      pdfPath: 'assets/PDF/PP.pdf',
      iBranch: 'Electrical',
    ),
    MyDeptPdf(
        imgPath: 'assets/IMG/mechh.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Mechanical'),
    MyDeptPdf(
        imgPath: 'assets/IMG/ecee.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Electronics'),
    MyDeptPdf(
        imgPath: 'assets/IMG/CSE.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Computer science'),
    MyDeptPdf(
        imgPath: 'assets/IMG/MIN.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Mining'),
    MyDeptPdf(
        imgPath: 'assets/IMG/peet.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Petroleum'),
    MyDeptPdf(
        imgPath: 'assets/IMG/AIML.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Artificial Intelligence & Machine Learning'),
    MyDeptPdf(
        imgPath: 'assets/IMG/itt.png',
        pdfPath: 'assets/PDF/PP.pdf',
        iBranch: 'Informatin Technology'),
    MyDeptPdf(
      imgPath: 'assets/IMG/agrii.png',
      pdfPath: 'assets/PDF/PP.pdf',
      iBranch: 'Agricultural',
    ),
    MyDeptPdf(
      imgPath: 'assets/IMG/DS.png',
      pdfPath: 'assets/PDF/PP.pdf',
      iBranch: 'Data Science',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text(iBranch),
      ),
      body: const PDF(swipeHorizontal: true, enableSwipe: true)
          .fromAsset('assets/PDF/flutter.pdf'),
    );
  }
}
