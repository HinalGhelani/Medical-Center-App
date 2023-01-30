import 'dart:async';
import 'package:final_exam/consultPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SignInPage.dart';
import 'SignUpPage.dart';
import 'doctorHirePage.dart';
import 'donePage.dart';
import 'homeScreen.dart';
import 'medicine.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? splashvisit = prefs.getBool('splashvisit') ?? false;
  bool? login = prefs.getBool('login') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (splashvisit == false)
          ? '/'
          : (login == false)
              ? 'signup'
              : 'homeScreen',
      routes: {
        '/': (context) => const MyApp(),
        'signup': (context) => const SignUp(),
        'signIn': (context) => const SignInPage(),
        'homeScreen': (context) => const HomeScreen(),
        'consult': (context) => const consultPage(),
        'doctor': (context) => const doctorHirePage(),
        'medicine': (context) => const medicinePage(),
        'page3': (context) => const Page3(),
        'donePage': (context) => const donePage(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  spalsh() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('splashvisit', true);
  }

  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, 'signup'),
    );
    spalsh();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        "build/medicalApp/logo.png",
        scale: 1.6,
        color: Color(0xff54D1AD),
      ),
    );
  }
}
