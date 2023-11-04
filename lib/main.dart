import 'package:campus_compass/faq.dart';
import 'package:campus_compass/home.dart';
import 'package:campus_compass/map.dart';
import 'package:campus_compass/signup.dart';
import 'package:campus_compass/login.dart';
import 'package:campus_compass/add_classes.dart';
import 'package:campus_compass/settings.dart';
import 'package:campus_compass/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Compass',
      theme: globalTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/map': (context) => const MapPage(),
        '/addclass': (context) => const AddClassSchedule(),
        '/faq': (context) => FaqPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
