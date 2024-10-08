import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:whats_app_ui/screens/otp_verification_page.dart';

class WhatsAppAuthorization extends StatefulWidget {
  static const String id = 'auth_screen';
  const WhatsAppAuthorization({super.key});

  @override
  State<WhatsAppAuthorization> createState() => _WhatsAppAuthorizationState();
}
final phoneController = TextEditingController();

class _WhatsAppAuthorizationState extends State<WhatsAppAuthorization> {
  String generateOTP() {
    var rng = Random();
    return (rng.nextInt(900000) + 100000).toString(); // Generates a 6-digit OTP
  }

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
            IntlPhoneField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE4E7EB),
                  ),
                ),
              ),
              style: const TextStyle(color: Colors.white),
              dropdownTextStyle: const TextStyle(color: Colors.white),
              initialCountryCode: 'US',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {


                String otp = generateOTP();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OTPVerificationPage(otp: otp),
                  ),
                );
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
                  'Generate OTP',
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
