import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/introduction_screen.dart';

bool show = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ??
      true; //ถ้าไม่ใช่หน้าสุดท้ายให้รันไปเรื่อยๆ
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}
