import 'package:assessment/components/app_text.dart';
import 'package:assessment/components/common_button.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:assessment/controller/authentication_controller.dart';
import 'package:assessment/services/auth_services.dart';
import 'package:assessment/view/authentication/widgets/header.dart';
import 'package:assessment/view/authentication/widgets/otp_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatelessWidget {
  final String number;

  final String verificationId;

  const OTPScreen(
      {Key? key, required this.verificationId, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticationController =
        Provider.of<AuthenticationController>(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defPadding / 2, vertical: defPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(
                  boolean: true, imageUrl: "assets/images/auth_snap_2.png"),
              const SizedBox(height: 24),
              AppText(
                  // text: "We texted you",
                  text: translation(context).weTextYou,
                  clr: blackColor,
                  fontWeight: FontWeight.bold,
                  size: 20),
              const SizedBox(height: 8),
              Row(
                children: [
                  AppText(
                      // text: "Enter the code that we sent you on",
                      text: translation(context).enterTheCodeThatWeSentYouOn,
                      clr: greyColor,
                      // fontWeight: FontWeight.bold,
                      size: 14),
                  Expanded(
                    child: AppText(
                        text: " $number",
                        clr: greyColor,
                        fontWeight: FontWeight.w500,
                        size: 14),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              OTPField(
                  errorText: authenticationController.phoneNumber.error,
                  onChange: (value) {
                    authenticationController.changeSMSCode(value, context);
                  }),
              const SizedBox(height: 32),
              CommonButton(
                  text: translation(context).cntinue,
                  onTap: () async {
                    AuthServices().verifyOTP(
                        authenticationController.code.value!,
                        verificationId,
                        context);
                  }),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                      // text: "Enter the code that we sent you on",
                      text: translation(context).didNotReceiveCode,
                      clr: greyColor,
                      // fontWeight: FontWeight.bold,
                      size: 14),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      AuthServices().getOTP(number, context);
                    },
                    child: AppText(
                        text: translation(context).resend,
                        clr: purpleColor,
                        fontWeight: FontWeight.w500,
                        size: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
