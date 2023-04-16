// ignore_for_file: unused_element, use_build_context_synchronously, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mtsel/screens/authentication_screen.dart';
import 'package:mtsel/screens/dashboard_screen.dart';
import 'package:mtsel/screens/second_authentication.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/main': (_) => const Auth(),
        '/dashboard': (_) => const Dashboard(),
        '/second-authentication': (_) => const SecondAuthentication()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to my app"),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // to enable and disable splash screen
  @override
  void initState() {
    super.initState();
    _navigateToMain(context);
  }

  Future<void> _navigateToMain(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed('/main');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFEC2028,
      ),
      body: Center(
        child: Image.asset(
          'lib/assets/logo.png',
          width: 97,
          height: 125,
        ),
      ),
    );
  }
}
