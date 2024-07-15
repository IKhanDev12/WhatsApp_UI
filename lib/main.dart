import 'package:flutter/material.dart';
import 'package:whats_app_ui/screens/home_page.dart';
import 'package:whats_app_ui/screens/splash_screen.dart';
import 'package:whats_app_ui/screens/whats_app_authorization.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
        //home: const SplashScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id :(context) => const SplashScreen(),
        WhatsAppAuthorization.id: (context)=> const WhatsAppAuthorization(),
        HomePage.id: (context) => const HomePage(),
      },

    );
  }
}


