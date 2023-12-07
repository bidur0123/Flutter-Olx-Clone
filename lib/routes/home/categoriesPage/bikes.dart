import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';

class Bikes extends StatelessWidget {
  const Bikes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: const Icon(CupertinoIcons.back,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
        elevation: 0,
        title: const Text(
          "Bikes",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                CataTxt(
                    txt: "See all in Bikes",
                    func: () {},
                    showico: false,
                    color: const Color.fromRGBO(82, 136, 255, 1.0)),
                CataTxt(
                  txt: "Bikes & Motorcycles",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Spare Parts",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Bicycles",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "ATV & Quads",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Scooty & Scooters",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}
