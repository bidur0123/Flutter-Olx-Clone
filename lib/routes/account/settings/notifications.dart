import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool statusrec = false;
  bool statuscom = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                size: 20, color: Color.fromRGBO(12, 56, 61, 1.0)),
          ),
          title: const Text(
            "Notifications",
            style: TextStyle(
                color: Color.fromRGBO(12, 56, 61, 1.0),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1)),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 25),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.93,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Recommendations",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(0, 47, 52, 1.0)),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Receive rcmdns based on your activity",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(104, 132, 135, 1.0)),
                                ),
                              ],
                            ),
                            const Spacer(),
                            FlutterSwitch(
                              width: 55.0,
                              height: 25.0,
                              valueFontSize: 12.0,
                              toggleSize: 18.0,
                              value: statusrec,
                              onToggle: (val) {
                                setState(() {
                                  statusrec = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Divider(height: 3),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 25),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.93,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "communications & offers",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 47, 52, 1.0)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Receive updates,  offers and more",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(104, 132, 135, 1.0)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  FlutterSwitch(
                    width: 55.0,
                    height: 25.0,
                    valueFontSize: 12.0,
                    toggleSize: 18.0,
                    value: statuscom,
                    onToggle: (val) {
                      setState(() {
                        statuscom = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
