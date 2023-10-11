import 'package:flutter/material.dart';

import 'doctor_app_theme.dart';
import 'screens/doctor_detail_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinic App',
      theme: DoctorAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/doctor_details': (context) => const DoctorDetailScreen(),
      },
    );
  }
}