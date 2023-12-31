import 'dart:io';

import 'package:flutter/material.dart';
import 'package:olx_clone/routes/login/loginPage.dart';

class TAC extends StatefulWidget {
  const TAC({Key? key}) : super(key: key);

  static const String routeName = '/terms-page';

  @override
  State<TAC> createState() => _TACState();
}

class _TACState extends State<TAC> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      // WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
          elevation: 0,
        ),
        body: const Text("terms and Conditions Page"),
      ),
    );
  }
}
