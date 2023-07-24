import 'package:assessment/components/app_text.dart';
import 'package:assessment/components/common_button.dart';
import 'package:assessment/components/text_feild.dart';
import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:assessment/controller/authentication_controller.dart';
import 'package:assessment/services/auth_services.dart';
import 'package:assessment/view/authentication/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticationController =
        Provider.of<AuthenticationController>(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defPadding / 1.5, vertical: defPadding * 2.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(
                boolean: false,
                imageUrl: "assets/images/auth_snap_1.png",
              ),
              const SizedBox(height: 24),
              AppText(
                  // text: "Welcome to Find",
                  text: translation(context).welcomeToFind,
                  clr: blackColor,
                  fontWeight: FontWeight.bold,
                  size: 20),
              const SizedBox(height: 8),
              Row(
                children: [
                  AppText(
                      // text: "Enter your phone number below to get into",
                      text: translation(context)
                          .enterYourPhoneNumberBelowToGetInto,
                      clr: greyColor,
                      // fontWeight: FontWeight.bold,
                      size: 14),
                  AppText(
                      text: " Find",
                      clr: blackColor,
                      // fontWeight: FontWeight.bold,
                      size: 14),
                ],
              ),
              const SizedBox(height: 24),
              AppText(
                  // text: "Phone",
                  text: translation(context).phone,
                  clr: blackColor,
                  fontWeight: FontWeight.w500,
                  size: 16),
              const SizedBox(height: 16),
              CustomTextField(
                maxLength: 10,
                errorText: authenticationController.phoneNumber.error,
                textInputType: TextInputType.number,
                onChange: (value) {
                  authenticationController.changeNumber(value, context);
                },
                prefixIcon: const Center(
                  widthFactor: 2,
                  child: Text("+92"),
                ),
              ),
              const SizedBox(height: 24),
              CommonButton(
                  // text: "CONTINUE",
                  text: translation(context).cntinue,
                  onTap: () async {
                    authenticationController.isValid
                        ? AuthServices().getOTP(
                            "+92${authenticationController.phoneNumber.value}",
                            context)
                        : null;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
