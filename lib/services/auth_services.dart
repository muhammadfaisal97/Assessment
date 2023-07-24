import 'package:assessment/view/authentication/pages/otp_screen.dart';
import 'package:assessment/view/nav_bar/bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices {
  void getOTP(String number, BuildContext context) async {
    print(number);
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: number,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => OTPScreen(
                    number: number,
                    verificationId: verificationId,
                  )),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP(
      String smsCode, String verificationId, BuildContext context) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);
      // Sign the user in with the credential
      await auth.signInWithCredential(credential).then((value) {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const BottomNavBar()));
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
