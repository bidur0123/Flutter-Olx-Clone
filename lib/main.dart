import 'package:flutter/material.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Olx clone',
      theme: ThemeData(
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(
            // primarySwatch: Colors.white,
            ),
      ),
      // ThemeData(
      //   primaryColor: Colors.white,
      //   textTheme: TextTheme(
      //     headline1: (TextStyle(backgroundColor: Colors.green))
      //   ),
      // ),
      home: (const LoginPage()));
  }
}
