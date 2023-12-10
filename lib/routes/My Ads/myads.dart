import 'package:flutter/material.dart';
import 'package:olx_clone/commons/actionbutton.dart';
import 'package:olx_clone/commons/bottomnavbar.dart';
import 'package:olx_clone/routes/My%20Ads/ads.dart';
import 'package:olx_clone/routes/My%20Ads/favourites.dart';

class MyAds extends StatefulWidget {
  const MyAds({super.key});

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My Ads",
              style: TextStyle(
                  color: Color.fromRGBO(12, 56, 61, 1.0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
            bottom: const TabBar(
              labelColor: Color.fromRGBO(12, 56, 61, 1.0),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: "ADS"),
                Tab(
                  text: "FAVOURITES",
                ),
              ],
            ),
          ),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
          body: const TabBarView(children: [Ads(), Favourites()]),
          bottomNavigationBar: const BottomNavigation(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingActionBtn(),
        ),
      ),
    );
  }
}
