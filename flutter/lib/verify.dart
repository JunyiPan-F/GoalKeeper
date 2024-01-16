// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:get/get.dart';
import 'package:my_flutter_project/home.dart';
import 'package:my_flutter_project/login.dart';

class PhoneVerificationPage extends StatefulWidget {
  final String phoneNumber;

  PhoneVerificationPage({required this.phoneNumber});

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  final TextEditingController _verificationController1 = TextEditingController();
  final TextEditingController _verificationController2 = TextEditingController();
  final TextEditingController _verificationController3 = TextEditingController();
  final TextEditingController _verificationController4 = TextEditingController();
  final TextEditingController _verificationController5 = TextEditingController();
  final TextEditingController _verificationController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAF0CA),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFFAF0CA),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Center(child: Text(
              'Verification Code',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Myanmar Khyay',
                color: Color(0xFF0D3B66),
              ),
            ),),
            SizedBox(height: 10),
            Center(child: Text(
              'SMS text sent to your phone',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Myanmar Khyay',
                color: Color(0xFF0D3B66),
              ),
            ),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildVerificationCodeInput(_verificationController1),
                buildVerificationCodeInput(_verificationController2),
                buildVerificationCodeInput(_verificationController3),
                buildVerificationCodeInput(_verificationController4),
                buildVerificationCodeInput(_verificationController5),
                buildVerificationCodeInput(_verificationController6),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  TextButton(
                  onPressed: () {
                    // Implement resend code functionality
                  },
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      fontFamily: 'Myanmar Khyay',
                      color: Color(0xFF0D3B66),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                  padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                  height: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4D35E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {
                      Get.offAll(HomePage());
                    },child: const Text(
                      "Confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF0D3B66)),
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }

  Widget buildVerificationCodeInput(TextEditingController controller) {
    return Container(
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFFEFB),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Myanmar Khyay',
          color: Color(0xFF0D3B66),
          fontSize: 16,
        ),
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
