import 'package:flutter/material.dart';
import 'dart:async';
import 'package:whats_app_ui/screens/home_page.dart';
import 'package:whats_app_ui/screens/whats_app_authorization.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToAuthorization();
  }

  _navigateToAuthorization() async {
    await Future.delayed(const Duration(seconds: 6), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WhatsAppAuthorization()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2F2E2E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'images/whatsapp-512.png',
              width: 100,
              height: 100,
            ),
          ),
          const Spacer(),
          const Text(
            'from',
            style: TextStyle(color: Colors.white12, fontSize: 20),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/meta.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 6),
              const Text(
                'Meta',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
