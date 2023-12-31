import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';

class Kids extends StatelessWidget {
  const Kids({Key? key}) : super(key: key);

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
          "Kids",
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
                  txt: "Kids Furniture",
                  category: "kids furniture",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Toys",
                  category: "toys",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Prams & Walkers",
                  category: "prams & walkers",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Swings & Slides",
                  category: "swings & slides",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Kids Bikes",
                  category: "kids bikes",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Kids Accessories",
                  category: "kids accessories",
                  func: () {},
                  showico: false,
                  color: const Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}
