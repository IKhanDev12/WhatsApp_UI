import 'package:flutter/material.dart';
import 'package:whats_app_ui/screens/home_page.dart';

class WhatsAppAuthorization extends StatefulWidget {
  static const String id= 'auth_screen';
  const WhatsAppAuthorization({super.key});

  @override
  State<WhatsAppAuthorization> createState() => _WhatsAppAuthorizationState();
}

class _WhatsAppAuthorizationState extends State<WhatsAppAuthorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2F2E2E),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
            child: Text(
          'Phone number',
          style: TextStyle(color: Colors.white70),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Please confirm your country code and\nenter your phone number',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SafeArea(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Code',
                        hintStyle: TextStyle(color: Colors.white70),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '3xx-xxxxxxx',
                        hintStyle: TextStyle(color: Colors.white70),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.white70,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, color: Colors.black),

                ),
              ),
            ),

            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/whatsapp-512.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 6),
                const Text(
                  'Whats App',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
