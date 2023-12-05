import 'package:flutter/material.dart';
import 'package:olx_clone/routes/My%20Ads/myads.dart';
import 'package:olx_clone/routes/account/account.dart';
import 'package:olx_clone/routes/chats/chats.dart';
import 'package:olx_clone/routes/home/homepage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String location_name = 'India';

  @override
  Widget build(BuildContext context) {
    double resWidth = MediaQuery.of(context).size.width * 0.85;
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  child: IconButton(
                    iconSize: 30.0,
                    padding: const EdgeInsets.only(left: 15.0),
                    icon: const Icon(
                      Icons.home,
                      color: Color.fromRGBO(0, 47, 52, 1.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Home".toUpperCase(),
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 47, 52, 1.0),
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.only(left: 0.0),
                      icon: const Icon(
                        Icons.chat_sharp,
                        color: Color.fromRGBO(0, 47, 52, 1.0),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Chats()));
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 0),
                      child: Text(
                        "Chats".toUpperCase(),
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 47, 52, 1.0),
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 25),
              child: Text("sell",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 47, 52, 1.0),
                      fontWeight: FontWeight.w600,
                      fontSize: 20)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                    iconSize: 30.0,
                    padding: const EdgeInsets.only(left: 0.0),
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: Color.fromRGBO(0, 47, 52, 1.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MyAds()));
                    },
                  ),),
                  Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "My Ads".toUpperCase(),
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 47, 52, 1.0),
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 7),
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.only(left: 0.0, right: 5),
                      icon: const Icon(
                        Icons.account_circle,
                        color: Color.fromRGBO(0, 47, 52, 1.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AccountPage()));
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 5),
                      child: Text(
                        "Account".toUpperCase(),
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 47, 52, 1.0),
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
