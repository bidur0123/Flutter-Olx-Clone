import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:olx_clone/commons/account_rows.dart';
import 'package:olx_clone/routes/account/settings/privacy/createpass.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool status4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
         appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                size: 20, color: Color.fromRGBO(12, 56, 61, 1.0)),
          ),
          title: const Text(
            "Privacy",
            style: TextStyle(
                color: Color.fromRGBO(12, 56, 61, 1.0),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1)),
          backgroundColor: Colors.white,
         body: Column(children: [
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
                                "Show my phone number in ads",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 47, 52, 1.0)),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 47, 52, 1.0)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          FlutterSwitch(
                            width: 55.0,
                            height: 25.0,
                            valueFontSize: 12.0,
                            toggleSize: 18.0,
                            value: status4,
                            onToggle: (val) {
                              setState(() {
                                status4 = val;
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
        AccountRows(
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CreatePass()));
            },
            heading: "Create Password",
            sub_heading: "")
        ]
       ),
      )
    );
  }
}
