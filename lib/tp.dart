import 'package:flutter/material.dart';

import 'ajivi.dart';
import 'thub.dart';

class MyTpo extends StatelessWidget {
  const MyTpo({super.key});

  @override
  Widget build(BuildContext context) {
    final wi = MediaQuery.of(context).size.width;
    final hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Training & Placement',style: TextStyle(fontFamily: 'POP'),),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyAjvi()));
            },
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                width: wi / 1.25,
                height: hi / 3.25,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage('assets/IMG/ajivika.png'),
                        alignment: Alignment.center,
                        height: hi / 4,
                        width: wi / 1.5,
                      ),
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHub()));
            },
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                width: wi / 1.25,
                height: hi / 3.25,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage('assets/IMG/T.png'),
                        alignment: Alignment.center,
                        height: hi / 4,
                        width: wi / 1.5,
                      ),
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ),
        ],
      ),
    );
  }
}
