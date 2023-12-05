import 'package:flutter/material.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (Platform.isWindows) {
  //   Firebase.initializeApp(
  //       options: const FirebaseOptions(
  //           apiKey: 'AIzaSyCpG_baxBgjaAdBdGFb7vPGRBuT5L8FqFY',
  //           appId: '',
  //           messagingSenderId: '774007259454	',
  //           projectId: 'olx-clone-8d598'));
  // } else
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
