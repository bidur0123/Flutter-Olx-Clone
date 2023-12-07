import 'package:flutter/material.dart';

class Slideshow extends StatelessWidget {
  const Slideshow({super.key, required this.imageURL});

  final List imageURL;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(0, 14, 24, 1.0),
        child: PageView.builder(
            itemCount: imageURL.length,
            itemBuilder: (context, pagePosition) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    imageURL[pagePosition],
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
