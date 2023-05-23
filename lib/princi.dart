import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
// ignore: depend_on_referenced_packages

class MyPdf extends StatefulWidget {
  const MyPdf({Key? key}) : super(key: key);

  @override
  State<MyPdf> createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text('Principal Presentation'),
          centerTitle: true,
        ),
        body: const PDF(swipeHorizontal: true).fromAsset('assets/PDF/PP.pdf'));
  }
}
